import 'package:flutter/material.dart';

import 'constants.dart';

class ScreenHelper extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenHelper({
    super.key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800.0;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800.0 &&
      MediaQuery.of(context).size.width < 1200.0;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200.0) {
          return desktop;
        } else if (constraints.maxWidth >= 800 &&
            constraints.maxWidth < 1200.0) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}

/// Centers content within [kDesktopMaxWidth], with responsive horizontal padding.
/// Replaces responsive_framework's ResponsiveWrapper in all sections.
class PageWrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? extraPadding;

  const PageWrapper({super.key, required this.child, this.extraPadding});

  @override
  Widget build(BuildContext context) {
    final bool mobile = ScreenHelper.isMobile(context);
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kDesktopMaxWidth),
        child: Padding(
          padding: (extraPadding ??
              EdgeInsets.symmetric(horizontal: mobile ? 24.0 : 40.0)),
          child: child,
        ),
      ),
    );
  }
}
