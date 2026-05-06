import 'package:flutter/widgets.dart';

enum ScreenSize { mobile, tablet, desktop }

class Breakpoints {
  Breakpoints._();
  static const double mobile = 600.0;
  static const double tablet = 1024.0;
  static const double maxContentWidth = 1200.0;
}

extension ResponsiveContext on BuildContext {
  double get _width => MediaQuery.sizeOf(this).width;

  ScreenSize get screenSize {
    final w = _width;
    if (w < Breakpoints.mobile) return ScreenSize.mobile;
    if (w < Breakpoints.tablet) return ScreenSize.tablet;
    return ScreenSize.desktop;
  }

  bool get isMobile => screenSize == ScreenSize.mobile;
  bool get isTablet => screenSize == ScreenSize.tablet;
  bool get isDesktop => screenSize == ScreenSize.desktop;

  double get sectionPadding {
    switch (screenSize) {
      case ScreenSize.mobile:
        return 20.0;
      case ScreenSize.tablet:
        return 48.0;
      case ScreenSize.desktop:
        return 80.0;
    }
  }
}
