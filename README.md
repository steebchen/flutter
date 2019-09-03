# Github Action for Flutter CLI

This action provides `flutter` for Github Actions.

## Usage examples

This example first fetches the dependencies with `flutter pub get` and then
builds an apk and runs the flutter tests in parallel.

`.github/workflows/main.yml:`
```yml
on: push
name: build and test app
jobs:
  build:
    name: install dependencies
    runs-on: ubuntu-latest
    steps:
    - name: install dependencies
      uses: actions/checkout@master
      uses: steebchen/flutter@master
      with:
        args: pub get
    - name: run tests
      uses: steebchen/flutter@master
      with:
        args: test
    - name: build apk
      uses: steebchen/flutter@master
      with:
        args: build apk --release
```
