import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_strings.dart';

final localeProvider = StateProvider<Locale>((ref) => const Locale('en'));

final stringsProvider = Provider<AppStrings>((ref) {
  return AppStrings.forLocale(ref.watch(localeProvider));
});
