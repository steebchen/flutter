# Github Action for Flutter CLI

This action provides `flutter` for Github Actions.

## Usage examples

```hcl
workflow "test app" {
  on = "push"
  resolves = ["flutter build"]
}

# Install dependencies
action "flutter pub get" {
  uses = "steebchen/flutter@master"
  args = "pub get"
}

# test app
action "flutter test" {
  needs = "flutter pub get"
  uses = "steebchen/flutter@master"
  args = "test"
}

# Build APK
action "flutter build" {
  needs = "flutter test"
  uses  = "steebchen/flutter@master"
  args  = "build apk --release"
}
```
