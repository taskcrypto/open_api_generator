/// OpenAPI仕様の名前をDartの命名規則に変換するためのユーティリティクラス
class NameUtils {
  /// クラス名を正規化します
  ///
  /// [name] 正規化する名前
  ///
  /// 以下の変換を行います：
  /// - ドットをアンダースコアに置換
  /// - その他の無効な文字を置換
  /// - 先頭が数字の場合、アンダースコアを追加
  /// - 単語の区切りを処理
  ///
  /// 例：
  /// ```dart
  /// normalizeClassName('user.type') // returns 'UserType'
  /// normalizeClassName('1user') // returns '_1User'
  /// ```
  static String normalizeClassName(String name) {
    // ドットをアンダースコアに置換
    name = name.replaceAll('.', '_');
    // その他の無効な文字を置換
    name = name.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '');
    // 先頭が数字の場合、アンダースコアを追加
    if (name.startsWith(RegExp(r'[0-9]'))) {
      name = '_$name';
    }
    // 単語の区切りを処理
    name = name.split('_').map((part) {
      if (part.isEmpty) return '';
      return part[0].toUpperCase() + part.substring(1);
    }).join();
    return name;
  }

  /// プロパティ名を正規化します
  ///
  /// [name] 正規化する名前
  ///
  /// Dartの予約語と競合する場合、適切な接尾辞を追加します
  /// 例：'class' -> 'classValue'
  ///
  /// 予約語でない場合は元の名前をそのまま返します
  static String normalizePropertyName(String name) {
    // 予約語の場合、接尾辞を追加
    final reservedWords = {
      'is': 'isValue',
      'in': 'inValue',
      'class': 'classValue',
      'with': 'withValue',
      'default': 'defaultValue',
      'switch': 'switchValue',
      'case': 'caseValue',
      'break': 'breakValue',
      'continue': 'continueValue',
      'return': 'returnValue',
      'throw': 'throwValue',
      'catch': 'catchValue',
      'finally': 'finallyValue',
      'do': 'doValue',
      'while': 'whileValue',
      'for': 'forValue',
      'if': 'ifValue',
      'else': 'elseValue',
      'try': 'tryValue',
      'void': 'voidValue',
      'var': 'varValue',
      'final': 'finalValue',
      'const': 'constValue',
      'new': 'newValue',
      'true': 'trueValue',
      'false': 'falseValue',
      'null': 'nullValue',
      'this': 'thisValue',
      'super': 'superValue',
      'extends': 'extendsValue',
      'implements': 'implementsValue',
      'abstract': 'abstractValue',
      'static': 'staticValue',
      'operator': 'operatorValue',
      'get': 'getValue',
      'set': 'setValue',
    };

    return reservedWords[name] ?? name;
  }

  /// ファイル名を正規化します
  ///
  /// [name] 正規化する名前
  ///
  /// 以下の変換を行います：
  /// - ドットをアンダースコアに置換
  /// - その他の無効な文字を置換
  /// - キャメルケースをスネークケースに変換
  /// - 全て小文字に変換
  ///
  /// 例：
  /// ```dart
  /// normalizeFileName('UserType') // returns 'user_type'
  /// normalizeFileName('API.Response') // returns 'api_response'
  /// ```
  static String normalizeFileName(String name) {
    // ドットをアンダースコアに置換
    name = name.replaceAll('.', '_');
    // その他の無効な文字を置換
    name = name.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '');
    // キャメルケースをスネークケースに変換
    name = name.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => (match.start == 0 ? '' : '_') + match.group(0)!.toLowerCase(),
    );
    // 小文字に変換
    name = name.toLowerCase();
    return name;
  }

  /// 変数名を正規化します
  ///
  /// [name] 正規化する名前
  ///
  /// 以下の変換を行います：
  /// - 連続する大文字を適切に分割
  /// - 最初の単語は全て小文字
  /// - 2番目以降の単語は先頭文字のみ大文字
  ///
  /// 例：
  /// ```dart
  /// normalizeVariableName('UserType') // returns 'userType'
  /// normalizeVariableName('APIResponse') // returns 'apiResponse'
  /// normalizeVariableName('URL') // returns 'url'
  /// ```
  static String normalizeVariableName(String name) {
    if (name.isEmpty) return name;

    // 連続する大文字を検出して適切に分割
    final words = <String>[];
    var currentWord = '';
    var isLastCharUpper = false;

    for (var i = 0; i < name.length; i++) {
      final char = name[i];
      final isUpper = char.toUpperCase() == char;

      if (isUpper && i > 0) {
        // 次の文字が小文字の場合、または前の文字が小文字の場合は新しい単語を開始
        if ((i < name.length - 1 && name[i + 1].toLowerCase() == name[i + 1]) ||
            !isLastCharUpper) {
          if (currentWord.isNotEmpty) {
            words.add(currentWord);
          }
          currentWord = char;
        } else {
          currentWord += char;
        }
      } else {
        currentWord += char;
      }

      isLastCharUpper = isUpper;
    }

    if (currentWord.isNotEmpty) {
      words.add(currentWord);
    }

    // 最初の単語は全て小文字に
    var result = words[0].toLowerCase();

    // 2番目以降の単語は先頭を大文字に
    for (var i = 1; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        result +=
            words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
      }
    }

    return result;
  }

  /// 文字列をキャメルケースに変換します。
  ///
  /// 変換ルール：
  /// - 1文字目は小文字
  /// - 2文字目以降は大文字を維持
  /// - 区切り文字（_、-、空白）の後の文字は大文字
  ///
  /// 例：
  /// - "user_name" -> "userName"
  /// - "API_KEY" -> "apiKey"
  /// - "first-name" -> "firstName"
  /// - "user ID" -> "userId"
  static String toCamelCase(String input) {
    if (input.isEmpty) return input;

    // 区切り文字で分割
    final words = input.split(RegExp(r'[_\- ]'));

    // 各単語を処理
    final camelCase = words.map((word) {
      if (word.isEmpty) return '';

      // 1文字目は小文字、2文字目以降は大文字を維持
      final firstChar = word[0].toLowerCase();
      final rest = word.substring(1);
      return firstChar + rest;
    }).join('');

    return camelCase;
  }

  /// 文字列をスネークケースに変換します
  ///
  /// [input] 変換する文字列
  ///
  /// 以下の変換を行います：
  /// - ドットをアンダースコアに置換
  /// - 無効な文字を除去
  /// - キャメルケースをスネークケースに変換
  /// - 全て小文字に変換
  ///
  /// 例：
  /// ```dart
  /// toSnakeCase('UserName') // returns 'user_name'
  /// toSnakeCase('API.Response') // returns 'api_response'
  /// toSnakeCase('OAuth2Token') // returns 'o_auth2_token'
  /// ```
  static String toSnakeCase(String input) {
    if (input.isEmpty) return input;

    // ドットをアンダースコアに置換
    var result = input.replaceAll('.', '_');

    // その他の無効な文字を除去
    result = result.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '');

    // キャメルケースをスネークケースに変換
    result = result.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => (match.start == 0 ? '' : '_') + match.group(0)!.toLowerCase(),
    );

    // 小文字に変換
    return result.toLowerCase();
  }

  /// HTTPパスとメソッドからDartのメソッド名を生成します。
  ///
  /// 例：
  /// - パス: "/users/{id}/posts"
  /// - メソッド: "GET"
  /// - 結果: "getUserByIdPosts"
  ///
  /// [path] APIエンドポイントのパス
  /// [httpMethod] HTTPメソッド（GET, POST, PUT, DELETE等）
  /// [options] 生成オプション（デフォルト値を使用する場合はnull）
  static String generateMethodName(
    String path,
    String httpMethod, {
    MethodNameOptions? options,
  }) {
    final defaultOptions = MethodNameOptions();
    options ??= defaultOptions;

    final pathSegments = path.split('/')..removeWhere((s) => s.isEmpty);
    if (pathSegments.isEmpty) {
      return httpMethod.toLowerCase();
    }

    // パスパラメータとクリーンなセグメントを分離
    final pathParams = pathSegments
        .where((s) => s.startsWith('{') && s.endsWith('}'))
        .map((s) => s.substring(1, s.length - 1))
        .toList();

    final cleanSegments = pathSegments
        .where((s) => !s.startsWith('{') && !s.endsWith('}'))
        .toList();

    // クリーンなセグメントをキャメルケースに変換
    String methodName = '';
    if (options.reverseSegments) {
      // 逆順に処理（MethodGeneratorスタイル）
      for (var i = cleanSegments.length - 1; i >= 0; i--) {
        final segment = toCamelCase(cleanSegments[i]);
        if (methodName.isEmpty) {
          methodName = segment;
        } else {
          methodName = segment + capitalize(methodName);
        }
      }
    } else {
      // 順方向に処理（RetrofitGeneratorスタイル）
      methodName = cleanSegments
          .map((segment) => capitalize(toCamelCase(segment)))
          .join('');
    }

    // パスパラメータの処理
    if (pathParams.isNotEmpty && options.includePathParams) {
      final paramsSuffix = pathParams
          .map((p) => capitalize(toCamelCase(p)))
          .join(options.pathParamJoiner);
      methodName += '${options.pathParamPrefix}$paramsSuffix';
    }

    // HTTPメソッドを追加
    return '${httpMethod.toLowerCase()}$methodName';
  }

  /// 文字列の最初の文字を大文字にします
  static String capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }
}

/// メソッド名生成のオプション
class MethodNameOptions {
  /// パスセグメントを逆順に処理するかどうか
  final bool reverseSegments;

  /// パスパラメータを含めるかどうか
  final bool includePathParams;

  /// パスパラメータのプレフィックス（デフォルト: "By"）
  final String pathParamPrefix;

  /// パスパラメータの結合文字（デフォルト: "And"）
  final String pathParamJoiner;

  const MethodNameOptions({
    this.reverseSegments = false,
    this.includePathParams = true,
    this.pathParamPrefix = 'By',
    this.pathParamJoiner = 'And',
  });
}
