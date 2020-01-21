# Platform Widgets

![Flutter](https://img.shields.io/badge/sdk-Flutter-9cf)
![Dart](https://img.shields.io/badge/language-Dart-blue)

A Flutter plugin for Platform specific widgets.

## Usage
To use this plugin, add platform_widgets as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Available Widgets

- `PlatformApp` returns **CupertinoApp** when iOS and **MaterialApp** when Android.

- `PlatformTheme`'s `ios` property returns **CupertinoThemeData** and `android` property returns **ThemeData**.

- `PlatformScaffold` returns **CupertinoPageScaffold** when iOS and **Scaffold** when Android.

- `PlatformBar` returns **NavigationBar** when iOS and **AppBar** when Android.

- `PlatformButton` returns **CupertinoButton** when iOS and **FlatButton** when Android.

- `PlatformTextField` returns **CupertinoTexrField** when iOS and **TextField** when Android.


