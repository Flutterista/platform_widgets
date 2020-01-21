import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'base/platform_widget.dart';
import 'package:flutter/services.dart';

class PlatformTextField extends PlatformWidget<CupertinoTextField, TextField> {
  PlatformTextField({
    this.controller,
    this.focusNode,
    this.cupertinoDecoration = _kDefaultRoundedBorderDecoration,
    this.materialDecoration = const InputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.materialTextDirection,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.maxLength,
    this.maxLengthEnforced = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.dragStartBehavior = DragStartBehavior.start,
    this.onTap,
    this.materialBuildCounter,
    this.scrollPhysics,
    this.scrollController,
    this.cupertinoPadding = const EdgeInsets.all(6.0),
    this.cupertinoPlaceholder,
    this.cupertinoPlaceholderStyle = const TextStyle(
      fontWeight: FontWeight.w400,
      color: CupertinoColors.placeholderText,
    ),
    this.cupertinoPrefix,
    this.cupertinoPrefixMode = OverlayVisibilityMode.always,
    this.cupertinoSuffix,
    this.cupertinoSuffixMode = OverlayVisibilityMode.always,
    this.cupertinoClearButtonMode = OverlayVisibilityMode.never,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final bool autofocus;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  final int maxLines;
  final int minLines;
  final bool expands;
  final bool readOnly;
  final ToolbarOptions toolbarOptions;
  final bool showCursor;
  final int maxLength;
  final bool maxLengthEnforced;
  final ValueChanged<String> onChanged;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onSubmitted;
  final List<TextInputFormatter> inputFormatters;
  final bool enabled;
  final double cursorWidth;
  final Radius cursorRadius;
  final Color cursorColor;
  final Brightness keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final DragStartBehavior dragStartBehavior;
  final GestureTapCallback onTap;
  final ScrollPhysics scrollPhysics;
  final ScrollController scrollController;

  /// Only used in CupertinoTextField
  final BoxDecoration cupertinoDecoration;
  final EdgeInsets cupertinoPadding;
  final String cupertinoPlaceholder;
  final TextStyle cupertinoPlaceholderStyle;
  final Widget cupertinoPrefix;
  final OverlayVisibilityMode cupertinoPrefixMode;
  final Widget cupertinoSuffix;
  final OverlayVisibilityMode cupertinoSuffixMode;
  final OverlayVisibilityMode cupertinoClearButtonMode;

  static const BorderSide _kDefaultRoundedBorderSide = BorderSide(
    color: CupertinoDynamicColor.withBrightness(
      color: Color(0x33000000),
      darkColor: Color(0x33FFFFFF),
    ),
    style: BorderStyle.solid,
    width: 0.0,
  );

  static const Border _kDefaultRoundedBorder = Border(
    top: _kDefaultRoundedBorderSide,
    bottom: _kDefaultRoundedBorderSide,
    left: _kDefaultRoundedBorderSide,
    right: _kDefaultRoundedBorderSide,
  );

  static const BoxDecoration _kDefaultRoundedBorderDecoration = BoxDecoration(
    color: CupertinoDynamicColor.withBrightness(
      color: CupertinoColors.white,
      darkColor: CupertinoColors.black,
    ),
    border: _kDefaultRoundedBorder,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// Only used in TextField
  final InputDecoration materialDecoration;
  final TextDirection materialTextDirection;
  final InputCounterWidgetBuilder materialBuildCounter;

  @override
  CupertinoTextField createIosWidget(BuildContext context) {
    return CupertinoTextField(
      controller: this.controller,
      focusNode: this.focusNode,
      decoration: this.cupertinoDecoration,
      padding: this.cupertinoPadding,
      placeholder: this.cupertinoPlaceholder,
      placeholderStyle: this.cupertinoPlaceholderStyle,
      prefix: this.cupertinoPrefix,
      prefixMode: this.cupertinoPrefixMode,
      suffix: this.cupertinoSuffix,
      suffixMode: this.cupertinoSuffixMode,
      clearButtonMode: this.cupertinoClearButtonMode,
      keyboardType: this.keyboardType,
      textInputAction: this.textInputAction,
      textCapitalization: this.textCapitalization,
      style: this.style,
      strutStyle: this.strutStyle,
      textAlign: this.textAlign,
      textAlignVertical: this.textAlignVertical,
      readOnly: this.readOnly,
      toolbarOptions: this.toolbarOptions,
      showCursor: this.showCursor,
      autofocus: this.autofocus,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      enableSuggestions: this.enableSuggestions,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      maxLengthEnforced: this.maxLengthEnforced,
      onChanged: this.onChanged,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorRadius: this.cursorRadius ?? const Radius.circular(2.0),
      cursorColor: this.cursorColor,
      keyboardAppearance: this.keyboardAppearance,
      scrollPadding: this.scrollPadding,
      dragStartBehavior: this.dragStartBehavior,
      enableInteractiveSelection: this.enableInteractiveSelection,
      onTap: this.onTap,
      scrollController: this.scrollController,
      scrollPhysics: this.scrollPhysics,
    );
  }

  @override
  TextField createAndroidWidget(BuildContext context) {
    return TextField(
      controller: this.controller,
      focusNode: this.focusNode,
      decoration: this.materialDecoration,
      keyboardType: this.keyboardType,
      textInputAction: this.textInputAction,
      textCapitalization: this.textCapitalization,
      style: this.style,
      strutStyle: this.strutStyle,
      textAlign: this.textAlign,
      textAlignVertical: this.textAlignVertical,
      textDirection: this.materialTextDirection,
      readOnly: this.readOnly,
      toolbarOptions: this.toolbarOptions,
      showCursor: this.showCursor,
      autofocus: this.autofocus,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      enableSuggestions: this.enableSuggestions,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      maxLengthEnforced: this.maxLengthEnforced,
      onChanged: this.onChanged,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorRadius: this.cursorRadius,
      cursorColor: this.cursorColor,
      keyboardAppearance: this.keyboardAppearance,
      scrollPadding: this.scrollPadding,
      dragStartBehavior: this.dragStartBehavior,
      enableInteractiveSelection: this.enableInteractiveSelection,
      onTap: this.onTap,
      buildCounter: this.materialBuildCounter,
      scrollController: this.scrollController,
      scrollPhysics: this.scrollPhysics,
    );
  }
}
