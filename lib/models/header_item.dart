import 'package:flutter/material.dart';

enum NavSection { home, about, skills, projects, contact, blog, none }

class NameOnTap {
  final String title;
  final IconData? iconData;
  final VoidCallback onTap;
  final bool? isDarkTheme;
  final NavSection section;

  NameOnTap({
    required this.title,
    required this.onTap,
    this.iconData,
    this.isDarkTheme,
    this.section = NavSection.none,
  });
}
