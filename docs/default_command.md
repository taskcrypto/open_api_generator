# build runner commands

flutter pub run build_runner watch

flutter pub run build_runner build --delete-conflicting-outputs

---
再生成

`dart run bin/generate.dart --input kabu_STATION_API.yaml --output lib/generated --base-url https://kabucom.github.io/kabusapi/reference/kabu_STATION_API.yaml`


dart run generate.dart --input example/open_api_files/kabu_station_api.yaml --output example/lib/generated/kabu_station_api --base-url https://localhost:18080