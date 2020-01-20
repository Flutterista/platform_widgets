import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_app.dart';
import 'package:platform_widgets/platform_scaffold.dart';
import 'package:platform_widgets/platform_button.dart';
import 'package:platform_widgets/platform_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      home: PlatformScaffold(
        appbar: PlatformBar(
          middle: Text('Example App'),
        ),
        child: Center(
          child: PlatformButton(
            child: Text('Example Button'),
            onPressed: () => print('On Button Pressed'),
          ),
        )
      ),
    );
  }
}
