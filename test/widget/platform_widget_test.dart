import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformWidgetTest extends PlatformWidget<Container, Container> {
  bool calledIosWidget = false;
  bool calledAndroidWidget = false;

  @override
  Container createAndroidWidget(BuildContext context) {
    calledIosWidget = true;
    return Container();
  }

  @override
  Container createIosWidget(BuildContext context) {
    calledAndroidWidget = true;
    return Container();
  }
}

void main() {
  testWidgets('', (WidgetTester tester) async {
    PlatformWidgetTest testWidget = PlatformWidgetTest();
    await tester.pumpWidget(testWidget);

    if (Platform.isIOS) {
      expect(testWidget.calledIosWidget, true);
      expect(testWidget.calledAndroidWidget, false);
    } else if (Platform.isAndroid) {
      expect(testWidget.calledIosWidget, false);
      expect(testWidget.calledAndroidWidget, true);
    }
  });
}
