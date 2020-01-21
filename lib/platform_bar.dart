import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_widgets/base/platform_widget.dart';

class PlatformBar extends PlatformWidget<CupertinoNavigationBar, AppBar> implements ObstructingPreferredSizeWidget {

  PlatformBar({
    this.middle,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.cupertinoTrailing,
    this.cupertinoAutomaticallyImplyMiddle = true,
    this.cupertinoPreviousPageTitle,
    this.cupertinoPadding,
    this.cupertinoBorder,
    this.cupertinoActionsForegroundColor,
    this.cupertinoTransitionBetweenRoutes = true,
    this.materialActions,
    this.materialFlexibleSpace,
    this.materialBottom,
    this.materialElevation,
    this.materialShape,
    this.materialIconTheme,
    this.materialActionsIconTheme,
    this.materialTextTheme,
    this.materialPrimary = true,
    this.materialCenterTitle,
    this.materialTitleSpacing = NavigationToolbar.kMiddleSpacing,
    this.materialToolbarOpacity = 1.0,
    this.materialBottomOpacity = 1.0,
  });

  final Widget middle;
  final Widget leading;
  final bool automaticallyImplyLeading;
  final Color backgroundColor;

  /// Only used in NavigationBar
  final Widget cupertinoTrailing;
  final bool cupertinoAutomaticallyImplyMiddle;
  final String cupertinoPreviousPageTitle;
  final EdgeInsetsDirectional cupertinoPadding;
  final Border cupertinoBorder;
  final Color cupertinoActionsForegroundColor;
  final bool cupertinoTransitionBetweenRoutes;

  /// Only used in AppBar
  final List<Widget> materialActions;
  final Widget materialFlexibleSpace;
  final PreferredSizeWidget materialBottom;
  final double materialElevation;
  final ShapeBorder materialShape;
  final IconThemeData materialIconTheme;
  final IconThemeData materialActionsIconTheme;
  final TextTheme materialTextTheme;
  final bool materialPrimary;
  final bool materialCenterTitle;
  final double materialTitleSpacing;
  final double materialToolbarOpacity;
  final double materialBottomOpacity;

  @override
  CupertinoNavigationBar createIosWidget(BuildContext context) {
    return CupertinoNavigationBar(
      leading: leading,
      middle: middle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      trailing: cupertinoTrailing,
      automaticallyImplyMiddle: cupertinoAutomaticallyImplyMiddle,
      padding: cupertinoPadding,
      border: cupertinoBorder,
      actionsForegroundColor: cupertinoActionsForegroundColor,
      transitionBetweenRoutes: cupertinoTransitionBetweenRoutes,
    );
  }

  @override
  AppBar createAndroidWidget(BuildContext context) {
    return AppBar(
      leading: leading,
      title: middle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      actions: materialActions,
      flexibleSpace: materialFlexibleSpace,
      bottom: materialBottom,
      elevation: materialElevation,
      shape: materialShape,
      iconTheme: materialIconTheme,
      actionsIconTheme: materialActionsIconTheme,
      textTheme: materialTextTheme,
      primary: materialPrimary,
      centerTitle: materialCenterTitle,
      titleSpacing: materialTitleSpacing,
      toolbarOpacity: materialToolbarOpacity,
      bottomOpacity: materialBottomOpacity,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}