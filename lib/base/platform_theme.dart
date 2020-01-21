import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformTheme extends Diagnosticable {
  const PlatformTheme({
    this.brightness,
    this.primaryColor,
    this.primaryContrastingColor,
    this.textTheme,
    this.barBackgroundColor,
    this.scaffoldBackgroundColor,
  });

  final Brightness brightness;
  final Color primaryColor;
  final Color primaryContrastingColor;
  final CupertinoTextThemeData textTheme;
  final Color barBackgroundColor;
  final Color scaffoldBackgroundColor;

  CupertinoThemeData get ios => CupertinoThemeData(
        brightness: brightness,
        primaryColor: primaryColor,
        primaryContrastingColor: primaryContrastingColor,
        textTheme: textTheme,
        barBackgroundColor: barBackgroundColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      );

  ThemeData get android => ThemeData(
        brightness: brightness,
        primaryColor: primaryColor,
        accentColor: primaryContrastingColor,
        textTheme: null,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        bottomAppBarColor: barBackgroundColor,
      );
}
