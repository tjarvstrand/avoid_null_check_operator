[![pub package](https://img.shields.io/pub/v/avoid_null_check_operator.svg)](https://pub.dev/packages/avoid_null_check_operator)

A Dart analyzer plugin that warns about null check operator (`!`) usage.

Requires Dart 3.10+ (Flutter 3.38+).

## Usage

Add to your `pubspec.yaml`:

```yaml
dev_dependencies:
  avoid_null_check_operator: ^1.0.0
```

Then add to `analysis_options.yaml`:

```yaml
plugins:
  avoid_null_check_operator: ^1.0.0
```

Restart the Dart Analysis Server to activate.
