# OpenAPI Generator Flutter

OpenAPI (Swagger) client generator for Flutter applications. This tool generates type-safe API clients from OpenAPI specifications.

## Features

- Generates type-safe API clients from OpenAPI specifications
- Supports both YAML and JSON formats
- Generates Freezed models for request/response types
- Supports Retrofit for API calls
- Configurable through build.yaml
- Supports URL-based OpenAPI specifications

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  openapi_generator_flutter: ^0.3.6
```

## Usage

### 1. Add dependencies to your `pubspec.yaml`

```yaml
dependencies:
  openapi_generator_flutter: ^0.3.6
  freezed_annotation: ^2.4.4
  json_annotation: ^4.9.0
  retrofit: ^4.1.0
  dio: ^5.8.0

dev_dependencies:
  build_runner: ^2.4.15
  freezed: ^2.5.8
  json_serializable: ^6.9.4
  retrofit_generator: ^9.1.9
```

### 2. Create a `build.yaml` file in your project root

```yaml
targets:
  $default:
    sources:
      - $package$
      - lib/**
      - open_api_files/**
    builders:
      openapi_generator_flutter:
        enabled: true
        options:
          run_generator: true
          input_folder: "open_api_files"
          output_folder: "lib/generated"
          input_urls:
            - url: "https://example.com/api/openapi.yaml"
```

### 3. Run the generator

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Configuration

### build.yaml Options

- `run_generator`: Enable/disable the generator (default: true)
- `input_folder`: Directory containing OpenAPI specification files
- `output_folder`: Directory where generated code will be placed
- `input_urls`: List of URLs to OpenAPI specification files

## Example

See the [example](example) directory for a complete example.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
