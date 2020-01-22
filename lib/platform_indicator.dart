import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformIndicator extends PlatformWidget<CupertinoActivityIndicator, CircularProgressIndicator> {
  PlatformIndicator({
    Key key, 
    this.materialValue,
    this.materialBackgroundColor, 
    this.materialValueColor, 
    this.materialStrokeWidth = 4.0, 
    this.materialSemanticsLabel, 
    this.materialSemanticsValue, 
    this.cupertinoAnimating, 
    this.cupertinoRadius = 10.0,
  });

  /// Only used in CircularProgressIndicator
  final Color materialBackgroundColor;
  final double materialValue;
  final Animation<Color> materialValueColor;
  final double materialStrokeWidth;
  final String materialSemanticsLabel;
  final String materialSemanticsValue;

  /// Only used in CupertinoActivityIndicator
  final bool cupertinoAnimating;
  final double cupertinoRadius;

  @override
  CircularProgressIndicator createAndroidWidget(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: this.materialBackgroundColor, 
      key: this.key,
      value: this.materialValue,
      valueColor: this.materialValueColor,
      strokeWidth: this.materialStrokeWidth,
      semanticsLabel: this.materialSemanticsLabel,
      semanticsValue: this.materialSemanticsValue,);
  }

  @override
  CupertinoActivityIndicator createIosWidget(BuildContext context) {
    return CupertinoActivityIndicator(
      animating: this.cupertinoAnimating,
      key: this.key, 
      radius: this.cupertinoRadius,
    );
  }
}