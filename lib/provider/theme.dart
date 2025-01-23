import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/utils/constants.dart';


final themeProvider = ChangeNotifierProvider(((ref) => CustomThemeProvider()));

class CustomThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

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
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.pink.shade50,
    colorScheme: const ColorScheme.light(),
    primaryColor: Colors.green.shade800,
    iconTheme: const IconThemeData(color: kPrimaryColor),
    primarySwatch: Colors.green,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(kBackgroundColor))),
  );
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black87,
      colorScheme: const ColorScheme.dark(),
      primarySwatch: Colors.green,
      primaryColor: Colors.green.shade800,
      iconTheme: IconThemeData(color: Colors.grey[400]),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.pink.shade50),
      )));
}
