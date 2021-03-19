import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'platform_theme.dart';

class PlatformApp extends StatefulWidget {
  PlatformApp({
    Key? key,
    this.navigatorKey,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true, 
    this.platformTheme, 
    this.materialDarkTheme, 
    this.materialThemeMode,
  }) : assert(routes != null),
       assert(navigatorObservers != null),
       assert(title != null),
       assert(showPerformanceOverlay != null),
       assert(checkerboardRasterCacheImages != null),
       assert(checkerboardOffscreenLayers != null),
       assert(showSemanticsDebugger != null),
       assert(debugShowCheckedModeBanner != null),
       super(key: key);

  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget? home;
  final Map<String, WidgetBuilder> routes;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final RouteFactory? onUnknownRoute;
  final List<NavigatorObserver> navigatorObservers;
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final Color? color;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final Iterable<Locale> supportedLocales;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final PlatformTheme? platformTheme;

  /// Only used in MaterialApp
  final ThemeData? materialDarkTheme;
  final ThemeMode? materialThemeMode;

  CupertinoApp createIosApp(BuildContext context) {
    return CupertinoApp(
      navigatorKey: navigatorKey,
      home: home,
      routes: routes,
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: onUnknownRoute,
      navigatorObservers: navigatorObservers,
      builder: builder,
      title: title,
      onGenerateTitle: onGenerateTitle,
      color: color,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: localeListResolutionCallback,
      localeResolutionCallback: localeResolutionCallback,
      supportedLocales: supportedLocales,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      theme: platformTheme!.ios,
    );
  }

  MaterialApp createAndroidApp(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: home,
      routes: routes,
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: onUnknownRoute,
      navigatorObservers: navigatorObservers,
      builder: builder,
      title: title,
      onGenerateTitle: onGenerateTitle,
      color: color,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: localeListResolutionCallback,
      localeResolutionCallback: localeResolutionCallback,
      supportedLocales: supportedLocales,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      theme: platformTheme!.android,
      darkTheme: materialDarkTheme,
      themeMode: materialThemeMode,
    );
  }

  @override
  _PlatformAppState createState() => _PlatformAppState(
        createIosApp: (context) => createIosApp(context),
        createAndroidApp: (context) => createAndroidApp(context),
      );
}

class _PlatformAppState<I, A> extends State<PlatformApp> {
  _PlatformAppState({
    required this.createIosApp,
    required this.createAndroidApp,
  });

  Function createIosApp;
  Function createAndroidApp;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return this.createIosApp(context);
    } else if (Platform.isAndroid) {
      return this.createAndroidApp(context);
    }
    return Container();
  }
}
