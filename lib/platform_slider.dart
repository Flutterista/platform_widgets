import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformSlider extends PlatformWidget<CupertinoSlider, Slider> {
  PlatformSlider({
    this.value,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.activeColor,
    this.materialLabel,
    this.materialInactiveColor,
    this.cupertinoThumbColor = CupertinoColors.white,
    this.materialSemanticFormatterCallback,
  });

  final double value;
  final ValueChanged<double> onChanged;
  final ValueChanged<double> onChangeStart;
  final ValueChanged<double> onChangeEnd;
  final double min;
  final double max;
  final int divisions;
  final Color activeColor;

  /// Only used in Slider
  final String materialLabel;
  final Color materialInactiveColor;
  final SemanticFormatterCallback materialSemanticFormatterCallback;

  /// Only used in CupertinoSlider
  final Color cupertinoThumbColor;

  @override
  Slider createAndroidWidget(BuildContext context) {
    return Slider(
      value: this.value,
      onChanged: this.onChanged,
      onChangeStart: this.onChangeStart,
      onChangeEnd: this.onChangeEnd,
      min: this.min,
      max: this.max,
      divisions: this.divisions,
      label: this.materialLabel,
      activeColor: this.activeColor,
      inactiveColor: this.materialInactiveColor,
      semanticFormatterCallback: this.materialSemanticFormatterCallback,
    );
  }

  @override
  CupertinoSlider createIosWidget(BuildContext context) {
    return CupertinoSlider(
      value: this.value,
      onChanged: this.onChanged,
      onChangeStart: this.onChangeStart,
      onChangeEnd: this.onChangeEnd,
      min: this.min,
      max: this.max,
      divisions: this.divisions,
      activeColor: this.activeColor,
      thumbColor: this.cupertinoThumbColor,
    );
  }
}
