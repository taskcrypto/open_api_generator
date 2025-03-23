import 'dart:io';

import 'package:args/args.dart';

class SchemaEnumUpdater {
  void run(List<String> arguments) {
    final parser = ArgParser()
      ..addOption('input', abbr: 'i', help: 'Input YAML file path');

    final results = parser.parse(arguments);

    if (results['input'] == null) {
      print('Error: Input file path is required');
      print(parser.usage);
      exit(1);
    }

    final inputPath = results['input'];
    try {
      updateSchemaEnums(inputPath);
      print('Schema enums updated successfully!');
    } catch (e) {
      print('Error updating schema enums: $e');
      exit(1);
    }
  }

  Future<void> updateSchemaEnums(String inputPath) async {
    final inputFile = File(inputPath);
    if (!inputFile.existsSync()) {
      throw Exception('Input file does not exist: $inputPath');
    }

    // バックアップファイルを作成
    final backupPath = '$inputPath.bak';
    await inputFile.copy(backupPath);

    // ファイルを読み込んで更新
    final content = await inputFile.readAsString();
    final updatedContent = _updateSchemaEnums(content);
    await inputFile.writeAsString(updatedContent);
  }

  /// スキーマ定義のenum値を更新する（内部実装）
  String _updateSchemaEnums(String content) {
    print('Starting schema enum update...');
    final lines = content.split('\n');
    final updatedLines = <String>[];
    bool inSchema = false;
    bool inProperty = false;
    bool inDescription = false;
    bool inEnum = false;
    String currentType = '';
    String descriptionBuffer = '';
    List<String> currentEnumValues = [];
    bool hasExistingEnum = false;

    for (var i = 0; i < lines.length; i++) {
      final line = lines[i].trimRight(); // 行末の空白を削除
      final trimmedLine = line.trim();

      // components/schemasセクションの開始を検出
      if (trimmedLine.startsWith('components:') ||
          trimmedLine.startsWith('schemas:')) {
        print('Found components/schemas section');
        inSchema = true;
        updatedLines.add(line);
        continue;
      }

      if (!inSchema) {
        updatedLines.add(line);
        continue;
      }

      // 新しいプロパティの開始を検出
      if (trimmedLine.startsWith('-')) {
        print('Found new property: ${trimmedLine.substring(1).trim()}');
        // 前のプロパティのenum値を追加（まだ追加されていない場合）
        if (inProperty && !hasExistingEnum && currentEnumValues.isNotEmpty) {
          print('Adding enum values for previous property');
          _addEnumValues(updatedLines, currentEnumValues, currentType);
        }

        inProperty = true;
        inDescription = false;
        inEnum = false;
        currentType = '';
        descriptionBuffer = '';
        currentEnumValues = [];
        hasExistingEnum = false;
        updatedLines.add(line);
        continue;
      }

      if (inProperty) {
        // type定義を検出
        if (trimmedLine.startsWith('type:')) {
          currentType = trimmedLine.split(':')[1].trim().replaceAll("'", '');
          print('Found type: $currentType');
          updatedLines.add(line);
          continue;
        }

        // 既存のenum定義を検出
        if (trimmedLine.startsWith('enum:')) {
          print('Found existing enum definition');
          hasExistingEnum = true;
          inEnum = true;
          // 既存のenum定義をそのまま保持
          updatedLines.add(line);
          continue;
        }

        // enum定義内の値をスキップ
        if (inEnum) {
          if (trimmedLine.startsWith('-')) {
            updatedLines.add(line);
            continue;
          } else {
            inEnum = false;
          }
        }

        // description定義を検出
        if (trimmedLine.startsWith('description:')) {
          print('Found description');
          inDescription = true;
          descriptionBuffer = line;
          updatedLines.add(line);
          continue;
        }

        // description内のテーブルデータを収集
        if (inDescription) {
          if (trimmedLine.startsWith('type:') ||
              trimmedLine.startsWith('enum:') ||
              trimmedLine.startsWith('-')) {
            inDescription = false;
            // テーブルからenum値を抽出（既存のenumがない場合のみ）
            if (!hasExistingEnum && _hasTableFormat(descriptionBuffer)) {
              print('Extracting enum values from table');
              currentEnumValues =
                  _extractEnumValuesFromTable(descriptionBuffer);
              print('Extracted values: $currentEnumValues');
            }
          } else {
            descriptionBuffer += '\n' + line;
            if (!line.contains('</table>')) {
              updatedLines.add(line);
            }
            continue;
          }
        }

        // プロパティの終わりまたはformat定義の後にenum値を追加（既存のenumがない場合のみ）
        if (!hasExistingEnum &&
            currentEnumValues.isNotEmpty &&
            (trimmedLine.startsWith('-'))) {
          print('Adding enum values after format/property end');
          _addEnumValues(updatedLines, currentEnumValues, currentType);
          hasExistingEnum = true;
        }

        updatedLines.add(line);
      } else {
        updatedLines.add(line);
      }
    }

    // 最後のプロパティのenum値を追加（必要な場合）
    if (inProperty && !hasExistingEnum && currentEnumValues.isNotEmpty) {
      print('Adding enum values for last property');
      _addEnumValues(updatedLines, currentEnumValues, currentType);
    }

    print('Schema enum update completed');
    return updatedLines.join('\n');
  }

  /// enum値をYAMLに追加する
  void _addEnumValues(
      List<String> lines, List<String> enumValues, String type) {
    if (enumValues.isEmpty) return;

    print('Adding enum values: $enumValues (type: $type)');
    final lastLine = lines.last;
    final indent = ' ' * (lastLine.length - lastLine.trimLeft().length);
    lines.add('${indent}enum:');

    for (final value in enumValues) {
      if (type == 'string') {
        // 文字列型の場合、値を一重引用符で囲む（二重引用符を削除）
        final cleanValue = value.replaceAll('"', '');
        print('Adding string enum value: $cleanValue');
        lines.add("$indent  - '$cleanValue'");
      } else if (RegExp(r'^\d+$').hasMatch(value)) {
        // 数値型の場合、数値として扱う
        print('Adding numeric enum value: $value');
        lines.add('$indent  - $value');
      }
    }
  }

  /// テーブル形式の説明文からenum値を抽出する
  List<String> _extractEnumValuesFromTable(String description) {
    final enumValues = <String>{}; // 重複を防ぐためにSetを使用
    final lines = description.split('\n');
    bool inBody = false;
    bool isFirstColumn = true;

    for (final line in lines) {
      if (line.contains('<tbody>')) {
        inBody = true;
        continue;
      }
      if (line.contains('</tbody>')) {
        inBody = false;
        break;
      }
      if (inBody && line.contains('<td>')) {
        final value = line
            .trim()
            .replaceAll(RegExp(r'<td>|</td>'), '')
            .replaceAll(RegExp(r'<br>.*$'), '') // <br>以降を削除
            .trim();

        if (isFirstColumn && value.isNotEmpty && value != '-') {
          if (value == '(半角スペース2つ)') {
            enumValues.add('  ');
          } else {
            enumValues.add(value);
          }
        }
        isFirstColumn = !isFirstColumn;
      }
      if (line.contains('</tr>')) {
        isFirstColumn = true;
      }
    }

    return enumValues.toList(); // Setをリストに変換して返す
  }

  /// 説明文にテーブル形式が含まれているかチェックする
  bool _hasTableFormat(String description) {
    return description.contains('<table>') &&
        description.contains('<thead>') &&
        description.contains('<tbody>') &&
        description.contains('<tr>') &&
        description.contains('<td>');
  }

  /// スキーマ定義にenum値を追加する
  String addEnumToSchema(
    String schema,
    List<String> enumValues,
    bool isStringType,
  ) {
    final lines = schema.split('\n');
    final updatedLines = <String>[];
    bool foundType = false;
    bool hasEnum = false;
    bool inEnum = false;

    for (final line in lines) {
      if (line.contains('enum:')) {
        hasEnum = true;
        inEnum = true;
        continue;
      }
      if (inEnum) {
        if (line.trim().startsWith('-')) {
          continue;
        } else {
          inEnum = false;
        }
      }
      updatedLines.add(line);
      if (line.contains('type:') && !foundType) {
        foundType = true;
      } else if (foundType && !hasEnum && !line.contains('enum:')) {
        // インデントを保持しながらenum値を追加
        final indent = line.contains('description:')
            ? line.substring(0, line.indexOf('description:'))
            : '          ';
        updatedLines.add('${indent}enum:');
        for (final value in enumValues) {
          if (isStringType) {
            // 文字列型の場合、値を一重引用符で囲む
            updatedLines.add("$indent  - '$value'");
          } else if (RegExp(r'^\d+$').hasMatch(value)) {
            // 数値型の場合、数値として扱う
            updatedLines.add('$indent  - $value');
          }
        }
        hasEnum = true;
      }
    }

    return updatedLines.join('\n');
  }
}
