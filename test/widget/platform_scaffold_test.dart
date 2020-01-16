import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/platform_scaffold.dart';
import 'dart:io' show Platform;

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(PlatformScaffold());

    if (Platform.isIOS) {
      final cupertinoScaffoldFinder = find.byElementType(CupertinoPageScaffold);
      expect(cupertinoScaffoldFinder, findsOneWidget);
    } else if (Platform.isAndroid) {
      final scaffoldFinder = find.byElementType(Scaffold);
      expect(scaffoldFinder, findsOneWidget);
    }
  });
}
