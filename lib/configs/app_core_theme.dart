import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_core_theme.freezed.dart';

@freezed
class AppCoreTheme with _$AppCoreTheme {
  const factory AppCoreTheme({
    Color? primary,
    Color? primaryLight,
    Color? primaryDark,
    Color? accent,
    Color? accentLight,
    Color? accentDark,
    Color? background,
    Color? backgroundSub,
    Color? scaffold,
    Color? scaffoldDark,
    Color? text,
    Color? textSub,
    Color? textSub2,
    Color? shadow, // Normal shadow on background
    Color? shadowSub, // Light shadow
  }) = _AppCoreTheme;

// Optionally, you can define any additional methods here
}
