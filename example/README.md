## Example

Add the plugin to your project's `pubspec.yaml`:

```yaml
dev_dependencies:
  avoid_null_check_operator: ^0.1.0
```

Enable it in `analysis_options.yaml`:

```yaml
plugins:
  avoid_null_check_operator: ^0.1.0
```

Then restart the Dart Analysis Server. Any use of the null check operator (`!`) will
produce a warning:

```dart
int foo(Map? a) {
  return a!['foo']; // warning: Avoid using the null check operator (!).
}
```
