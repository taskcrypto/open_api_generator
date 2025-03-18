import 'package:build/build.dart';

import 'src/builder/openapi_builder.dart';

/// OpenAPIジェネレーターのビルダー
Builder openapiBuilder(BuilderOptions options) => OpenApiBuilder(options);
