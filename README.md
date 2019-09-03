# Github Action for Flutter CLI

This action provides `flutter` for Github Actions.

## Usage examples

This example first fetches the dependencies with `flutter pub get` and then
builds an apk and runs the flutter tests in parallel.

`.github/workflows/main.yml`
```yml
on: push
name: build and test app
jobs:
  build:
    name: install dependencies
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1

    - name: install dependencies
      uses: steebchen/flutter@v1.0.0
      with:
        args: pub get

    - name: run tests
      uses: steebchen/flutter@v1.0.0
      with:
        args: test

    - name: build apk
      uses: steebchen/flutter@v1.0.0
      with:
        args: build apk --release
```
