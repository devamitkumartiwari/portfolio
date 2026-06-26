import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/constants.dart';

final themeProvider = ChangeNotifierProvider((_) => CustomThemeProvider());

class CustomThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  ThemeData get getCurrentTheme =>
      isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme;

  void changeTheme(bool? val) {
    if (val != null) {
      themeMode = val ? ThemeMode.dark : ThemeMode.light;
    }
    notifyListeners();
  }
}

class MyThemes {
  static const List<String> _fontFallbacks = [
    'Noto Sans Arabic',
    'Noto Sans Devanagari',
    'Noto Sans JP',
    'Noto Sans KR',
    'Noto Sans SC',
    'sans-serif',
  ];

  static final lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: kLightBg,
    fontFamily: 'Outfit',
    fontFamilyFallback: _fontFallbacks,
    colorScheme: const ColorScheme.light(
      primary: kAccent,
      secondary: kAccentCyan,
      surface: kLightSurface,
    ),
    textTheme: GoogleFonts.outfitTextTheme(ThemeData.light().textTheme),
    iconTheme: const IconThemeData(color: kAccent),
    dividerColor: kLightBorder,
  );

  static final darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: kDarkBg,
    fontFamily: 'Outfit',
    fontFamilyFallback: _fontFallbacks,
    colorScheme: const ColorScheme.dark(
      primary: kAccent,
      secondary: kAccentCyan,
      surface: kDarkSurface,
    ),
    textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme),
    iconTheme: const IconThemeData(color: kAccent),
    dividerColor: kDarkBorder,
  );
}
