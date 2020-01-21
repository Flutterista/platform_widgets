import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformButton extends PlatformWidget<CupertinoButton, FlatButton> {

  PlatformButton({
    @required this.child,
    @required this.onPressed,
    this.padding,
    this.color,
    this.disabledColor,
    this.pressedOpacity =  0.4,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.onLongPress,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
  });

  final Widget child;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color disabledColor;

  /// Only used in CupertinoButton
  final double pressedOpacity;
  final BorderRadius borderRadius;

  /// Only used in FlatButton
  final VoidCallback onLongPress;
  final ValueChanged<bool> onHighlightChanged;
  final ButtonTextTheme textTheme;
  final Color textColor;
  final Color disabledTextColor;
  final Color focusColor;
  final Color hoverColor;
  final Color highlightColor;
  final Color splashColor;
  final Brightness colorBrightness;
  final VisualDensity visualDensity;
  final ShapeBorder shape;
  final Clip clipBehavior;
  final FocusNode focusNode;
  final bool autofocus;
  final MaterialTapTargetSize materialTapTargetSize;

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return CupertinoButton(
      child: child, 
      onPressed: onPressed,
      padding: padding,
      color: color,
      disabledColor: disabledColor ?? CupertinoColors.quaternarySystemFill,
      pressedOpacity: pressedOpacity,
      borderRadius: borderRadius,
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
      onLongPress: onLongPress,
      onHighlightChanged: onHighlightChanged,
      textTheme: textTheme,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorBrightness: colorBrightness,
      visualDensity: visualDensity,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
    );
  }
}