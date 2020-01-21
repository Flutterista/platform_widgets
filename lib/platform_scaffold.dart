import 'package:platform_widgets/base/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformScaffold extends PlatformWidget<CupertinoPageScaffold, Scaffold> {
  PlatformScaffold({
    @required this.child,
    this.appbar,
    this.backgroundColor,
  });

  final Widget child;
  final Widget appbar;
  final Color backgroundColor;

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appbar,
      child: child,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: child,
      backgroundColor: backgroundColor,
    );
  }
}
