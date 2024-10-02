import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/ThemeState.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.light)) {
    init();
  }

  final themeMap = {
    "dark": ThemeMode.dark,
    "light": ThemeMode.light,
  };

  void init() async {
    final prefs = await SharedPreferences.getInstance();
    String? stringTheme = prefs.getString('theme');
    ThemeMode theme = stringTheme == null
        ? ThemeMode.light
        : themeMap[stringTheme] ?? ThemeMode.light;
    if (stringTheme == null) {
      await prefs.setString('theme', 'light');
    }
    emit(ThemeState(themeMode: theme));
  }

  // Set a new theme and persist it in SharedPreferences
  void setTheme(ThemeMode newTheme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', newTheme.toString().split('.').last);
    emit(ThemeState(themeMode: newTheme));
  }
}
