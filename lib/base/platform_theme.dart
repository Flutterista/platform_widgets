import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformTheme with Diagnosticable {
  const PlatformTheme({
    this.brightness,
    this.primaryColor,
    this.primaryContrastingColor,
    this.cupertinoTextTheme,
    this.materialTextTheme,
    this.barBackgroundColor,
    this.scaffoldBackgroundColor,
  });

  final Brightness? brightness;
  final Color? primaryColor;
  final Color? primaryContrastingColor;
  final Color? barBackgroundColor;
  final Color? scaffoldBackgroundColor;

  /// Only used in CupertinoThemeData
  final CupertinoTextThemeData? cupertinoTextTheme;

  /// Only used in ThemeData
  final TextTheme? materialTextTheme;

  CupertinoThemeData get ios => CupertinoThemeData(
        brightness: brightness,
        primaryColor: primaryColor,
        primaryContrastingColor: primaryContrastingColor,
        textTheme: cupertinoTextTheme,
        barBackgroundColor: barBackgroundColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      );

  ThemeData get android => ThemeData(
        brightness: brightness,
        primaryColor: primaryColor,
        accentColor: primaryContrastingColor,
        textTheme: materialTextTheme,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        bottomAppBarColor: barBackgroundColor,
      );
}
