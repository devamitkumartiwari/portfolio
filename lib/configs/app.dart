import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  /// Initializes the application settings based on the provided context.
  static void init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
    AppTheme.init(context);
    UIProps.init();
    Space.init();
    AppText.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
