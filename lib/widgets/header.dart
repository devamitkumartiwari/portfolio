import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/l10n/locale_provider.dart';
import '../core/routes/routes.dart';
import '../core/utils/constants.dart';
import '../core/utils/screen_helper.dart';
import '../provider/theme.dart';

class CommonHeader extends ConsumerWidget {
  const CommonHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final bg = isDark ? kDarkBg : kLightBg;
    final border = isDark ? kDarkBorder : kLightBorder;
    final textColor = isDark ? kDarkText : kLightText;
    final secColor = isDark ? kDarkTextSec : kLightTextSec;
    final s = ref.watch(stringsProvider);

    return RepaintBoundary(
      child: Container(
        height: kHeaderHeight,
        padding: EdgeInsets.symmetric(
          horizontal: ScreenHelper.isDesktop(context) ? 40 : 20,
        ),
        decoration: BoxDecoration(
          color: bg,
          border: Border(bottom: BorderSide(color: border, width: 1)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.10 : 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Back button
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => context.go(Routes.initial),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                    border: Border.all(color: kAccent.withValues(alpha: 0.30)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back_rounded, size: 15,
                          color: kAccent.withValues(alpha: 0.80)),
                      const SizedBox(width: 6),
                      Text(
                        s.ctaBack,
                        style: GoogleFonts.outfit(
                          color: kAccent.withValues(alpha: 0.80),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 16),

            // Logo
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => context.go(Routes.initial),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Amit",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.5,
                          color: textColor,
                        ),
                      ),
                      TextSpan(
                        text: ".",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: kAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const Spacer(),

            // Page title
            Text(
              s.worksTitle,
              style: GoogleFonts.outfit(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: secColor,
              ),
            ),

            const SizedBox(width: 20),

            // Theme toggle
            _ThemeToggle(isDark: isDark, ref: ref),
          ],
        ),
      ),
    );
  }
}

class _ThemeToggle extends StatefulWidget {
  final bool isDark;
  final WidgetRef ref;
  const _ThemeToggle({required this.isDark, required this.ref});

  @override
  State<_ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<_ThemeToggle> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () =>
            widget.ref.read(themeProvider).changeTheme(!widget.isDark),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: _hovered
                ? kAccent.withValues(alpha: 0.10)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _hovered
                  ? kAccent.withValues(alpha: 0.30)
                  : (widget.isDark ? kDarkBorder : kLightBorder),
            ),
          ),
          child: Icon(
            widget.isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
            size: 17,
            color: widget.isDark ? kDarkTextSec : kLightTextSec,
          ),
        ),
      ),
    );
  }
}
