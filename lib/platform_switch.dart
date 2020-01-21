import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformSwitch extends PlatformWidget<CupertinoSwitch, Switch> {
  PlatformSwitch({
    this.value,
    this.onChanged,
    this.activeColor,
    this.dragStartBehavior = DragStartBehavior.start,
    this.materialActiveTrackColor,
    this.materialInactiveTrackColor,
    this.materialActiveThumbImage,
    this.materialInactiveThumbImage,
    this.materialInactiveThumbColor,
    this.materialTapTargetSize,
    this.materialFocusColor,
    this.materialHoverColor,
    this.materialFocusNode,
    this.materialAutofocus,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final DragStartBehavior dragStartBehavior;

  /// Only used in Switch
  final MaterialTapTargetSize materialTapTargetSize;
  final Color materialActiveTrackColor;
  final Color materialInactiveTrackColor;
  final ImageProvider materialActiveThumbImage;
  final ImageProvider materialInactiveThumbImage;
  final Color materialInactiveThumbColor;
  final Color materialFocusColor;
  final Color materialHoverColor;
  final FocusNode materialFocusNode;
  final bool materialAutofocus;

  @override
  Switch createAndroidWidget(BuildContext context) {
    return Switch(
      value: this.value,
      onChanged: this.onChanged,
      activeColor: this.activeColor,
      activeTrackColor: this.materialActiveTrackColor,
      inactiveThumbColor: this.materialInactiveThumbColor,
      inactiveTrackColor: this.materialInactiveTrackColor,
      activeThumbImage: this.materialActiveThumbImage,
      inactiveThumbImage: this.materialInactiveThumbImage,
      materialTapTargetSize: this.materialTapTargetSize,
      dragStartBehavior: this.dragStartBehavior,
      focusColor: this.materialFocusColor,
      hoverColor: this.materialHoverColor,
      focusNode: this.materialFocusNode,
      autofocus: this.materialAutofocus,
    );
  }

  @override
  CupertinoSwitch createIosWidget(BuildContext context) {
    return CupertinoSwitch(
      onChanged: this.onChanged,
      value: this.value,
      activeColor: this.activeColor,
      dragStartBehavior: this.dragStartBehavior,
    );
  }
}
