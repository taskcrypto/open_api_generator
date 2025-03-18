import 'package:build/build.dart';

import 'src/builder/openapi_builder.dart';

export 'src/builder/openapi_builder.dart';

/// OpenAPIジェネレーターのビルダー
Builder openApiBuilder(BuilderOptions options) => OpenApiBuilder();
