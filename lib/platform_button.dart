import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformButton extends PlatformWidget<CupertinoButton, FlatButton> {

  PlatformButton({
    required this.child,
    required this.onPressed,
    this.padding,
    this.color,
    this.disabledColor,
    this.cupertinoPressedOpacity =  0.4,
    this.cupertinoBorderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.materialOnLongPress,
    this.materialOnHighlightChanged,
    this.materialTextTheme,
    this.materialTextColor,
    this.materialDisabledTextColor,
    this.materialFocusColor,
    this.materialHoverColor,
    this.materialHighlightColor,
    this.materialSplashColor,
    this.materialColorBrightness,
    this.materialShape,
    this.materialClipBehavior = Clip.none,
    this.materialFocusNode,
    this.materialAutofocus = false,
    this.materialTapTargetSize,
  });

  final Widget child;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? disabledColor;

  /// Only used in CupertinoButton
  final double cupertinoPressedOpacity;
  final BorderRadius cupertinoBorderRadius;

  /// Only used in FlatButton
  final VoidCallback? materialOnLongPress;
  final ValueChanged<bool>? materialOnHighlightChanged;
  final ButtonTextTheme? materialTextTheme;
  final Color? materialTextColor;
  final Color? materialDisabledTextColor;
  final Color? materialFocusColor;
  final Color? materialHoverColor;
  final Color? materialHighlightColor;
  final Color? materialSplashColor;
  final Brightness? materialColorBrightness;
  final ShapeBorder? materialShape;
  final Clip materialClipBehavior;
  final FocusNode? materialFocusNode;
  final bool materialAutofocus;
  final MaterialTapTargetSize? materialTapTargetSize;

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return CupertinoButton(
      child: child, 
      onPressed: onPressed,
      padding: padding,
      color: color,
      disabledColor: disabledColor ?? CupertinoColors.quaternarySystemFill,
      pressedOpacity: cupertinoPressedOpacity,
      borderRadius: cupertinoBorderRadius,
    );
  }

  @override
  FlatButton createAndroidWidget(BuildContext context) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
      padding: padding,
      color: color,
      disabledColor: disabledColor,
      onLongPress: materialOnLongPress,
      onHighlightChanged: materialOnHighlightChanged,
      textTheme: materialTextTheme,
      textColor: materialTextColor,
      disabledTextColor: materialDisabledTextColor,
      hoverColor: materialHoverColor,
      highlightColor: materialHighlightColor,
      splashColor: materialSplashColor,
      colorBrightness: materialColorBrightness,
      shape: materialShape,
      clipBehavior: materialClipBehavior,
      focusNode: materialFocusNode,
      autofocus: materialAutofocus,
      materialTapTargetSize: materialTapTargetSize,
    );
  }
}