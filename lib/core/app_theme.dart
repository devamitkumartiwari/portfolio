import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _seedColor = Color(0xFF0061A4);

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.light,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: _textTheme(scheme),
      cardTheme: _cardTheme(scheme),
      navigationRailTheme: _navRailTheme(scheme),
      elevatedButtonTheme: _elevatedButtonTheme(scheme),
      bottomNavigationBarTheme: _bottomNavTheme(scheme),
      dividerTheme: DividerThemeData(color: scheme.outlineVariant),
    );
  }

  static ThemeData dark() {
    final scheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.dark,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: _textTheme(scheme),
      cardTheme: _cardTheme(scheme),
      navigationRailTheme: _navRailTheme(scheme),
      elevatedButtonTheme: _elevatedButtonTheme(scheme),
      bottomNavigationBarTheme: _bottomNavTheme(scheme),
      dividerTheme: DividerThemeData(color: scheme.outlineVariant),
    );
  }

  static TextTheme _textTheme(ColorScheme scheme) {
    return GoogleFonts.poppinsTextTheme().apply(
      bodyColor: scheme.onSurface,
      displayColor: scheme.onSurface,
    );
  }

  static CardThemeData _cardTheme(ColorScheme scheme) {
    final isLight = scheme.brightness == Brightness.light;
    return CardThemeData(
      // White in light so cards pop off tinted section backgrounds
      color: isLight ? Colors.white : scheme.surfaceContainerLow,
      elevation: isLight ? 0 : 2,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: isLight
            ? BorderSide(color: scheme.outlineVariant, width: 1)
            : BorderSide.none,
      ),
    );
  }

  static NavigationRailThemeData _navRailTheme(ColorScheme scheme) {
    return NavigationRailThemeData(
      backgroundColor: scheme.surfaceContainerLow,
      indicatorColor: scheme.primaryContainer,
      selectedIconTheme: IconThemeData(
        color: scheme.onPrimaryContainer,
        size: 22,
      ),
      unselectedIconTheme: IconThemeData(
        color: scheme.onSurfaceVariant,
        size: 22,
      ),
      selectedLabelTextStyle: TextStyle(
        color: scheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
      unselectedLabelTextStyle: TextStyle(
        color: scheme.onSurfaceVariant,
        fontSize: 12,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme scheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // Filled primary button — clearly visible and clickable
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  static BottomNavigationBarThemeData _bottomNavTheme(ColorScheme scheme) {
    return BottomNavigationBarThemeData(
      backgroundColor: scheme.surfaceContainerLow,
      selectedItemColor: scheme.primary,
      unselectedItemColor: scheme.onSurfaceVariant,
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    );
  }
}
