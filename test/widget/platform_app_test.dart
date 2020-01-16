import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_app.dart';
import 'dart:io' show Platform;

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(PlatformApp());

    if (Platform.isIOS) {
      final cupertinoAppFinder = find.byElementType(CupertinoApp);
      expect(cupertinoAppFinder, findsOneWidget);
    } else if (Platform.isAndroid) {
      final materialAppFinder = find.byElementType(MaterialApp);
      expect(materialAppFinder, findsOneWidget);
    }
  });
}
