import 'dart:io';

import '../models/openapi_spec.dart';
import 'model_generator.dart';
import 'retrofit_generator.dart';

/// API呼び出し時に発生する例外
class ApiException implements Exception {
  final int statusCode;
  final String message;

  ApiException(this.statusCode, this.message);

  @override
  String toString() => 'ApiException: [$statusCode] $message';
}

/// OpenAPI仕様からAPIクライアントとモデルを生成するクラス
///
/// このクラスは以下の機能を提供します：
/// - モデルクラスの生成（ModelGeneratorを使用）
/// - Retrofitクライアントの生成（RetrofitGeneratorを使用）
/// - APIクライアントの管理クラスの生成（ManagerGeneratorを使用）
///
/// 生成されるファイルの構造：
/// ```
/// outputPath/
///   ├── models/           # モデルクラス
///   │   ├── auth/        # 認証関連のモデル
///   │   ├── order/       # 注文関連のモデル
///   │   └── ...
///   ├── retrofit/        # Retrofitクライアント
///   │   ├── auth/        # 認証関連のクライアント
///   │   ├── order/       # 注文関連のクライアント
///   │   └── ...
///   ├── manager/         # APIクライアント管理クラス
///   │   └── api_manager.dart
///   ├── models_index.dart
///   └── retrofit_index.dart
/// ```
class ApiGenerator {
  /// OpenAPI仕様
  final OpenApiSpec spec;

  /// 生成されたファイルの出力先ディレクトリ
  final String outputPath;

  /// APIのベースパス（例：/api/v1）
  final String basePath;

  /// ApiGeneratorを初期化
  ///
  /// [spec] OpenAPI仕様
  /// [outputPath] 生成されたファイルの出力先ディレクトリ
  /// [basePath] APIのベースパス（オプション）
  ApiGenerator(this.spec, this.outputPath, {this.basePath = ''});

  /// OpenAPI仕様からAPIクライアントとモデルを生成
  ///
  /// 以下の順序で生成を行います：
  /// 1. モデルクラスの生成
  /// 2. Retrofitクライアントの生成
  /// 3. APIクライアント管理クラスの生成
  Future<void> generate() async {
    // 既存のgeneratorディレクトリを削除
    final generatorDir = Directory('$outputPath/generator');
    if (await generatorDir.exists()) {
      await generatorDir.delete(recursive: true);
    }

    // モデルを生成
    final modelGenerator = ModelGenerator(spec, outputPath);
    await modelGenerator.generate();

    // Retrofitのクライアントを生成
    final retrofitGenerator =
        RetrofitGenerator(spec, outputPath, basePath: basePath);
    await retrofitGenerator.generate();
  }
}
