import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xFF009688),
  brightness: Brightness.light,
  primaryColor: const Color(0xFF009688),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.teal,
  )
      .copyWith(
        secondary: Colors.black,
        brightness: Brightness.light,
        surface: Colors.white,
      )
      .copyWith(
        surface: Colors.white,
      ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xFF009688),
  primaryColor: const Color(0xFF009688),
  highlightColor: const Color(0xFF009688),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.teal,
    brightness: Brightness.dark,
  ).copyWith(
    surface: Colors.grey[800],
  ),
);
