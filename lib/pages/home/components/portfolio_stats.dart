import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/app_strings.dart';
import '../../../core/l10n/locale_provider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../provider/theme.dart';

class _Stat {
  final String count;
  final String label;
  const _Stat(this.count, this.label);
}

List<_Stat> _buildStats(AppStrings s) => [
  _Stat("10+",  s.statsYears),
  _Stat("20+",  s.statsProjects),
  _Stat("50k+", s.statsDownloads),
  _Stat("6",    s.statsAwards),
];

class PortfolioStats extends StatelessWidget {
  const PortfolioStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isDark      = ref.watch(themeProvider).isDarkMode;
      final textColor   = isDark ? kDarkText    : kLightText;
      final secColor    = isDark ? kDarkTextSec : kLightTextSec;
      final borderColor = isDark ? kDarkBorder  : kLightBorder;
      final isMobile    = ScreenHelper.isMobile(context);
      final stats       = _buildStats(ref.watch(stringsProvider));

      return PageWrapper(
        extraPadding: EdgeInsets.symmetric(
          horizontal: isMobile ? 24 : 40,
          vertical:   isMobile ? 8  : 16,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 40,
            vertical:   isMobile ? 28 : 40,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:   Alignment.bottomRight,
              colors: [
                kAccent.withValues(alpha: isDark ? 0.12 : 0.07),
                kAccentCyan.withValues(alpha: isDark ? 0.08 : 0.05),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: kAccent.withValues(alpha: isDark ? 0.20 : 0.15),
            ),
          ),
          child: isMobile
              ? _MobileStats(stats: stats, textColor: textColor, secColor: secColor, borderColor: borderColor)
              : _DesktopStats(stats: stats, textColor: textColor, secColor: secColor),
        ),
      );
    });
  }
}

class _DesktopStats extends StatelessWidget {
  final List<_Stat> stats;
  final Color textColor;
  final Color secColor;
  const _DesktopStats({required this.stats, required this.textColor, required this.secColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: stats.asMap().entries.map((e) {
        return Expanded(
          child: _StatItem(
            stat:        e.value,
            textColor:   textColor,
            secColor:    secColor,
            showDivider: e.key < stats.length - 1,
          ),
        );
      }).toList(),
    );
  }
}

class _MobileStats extends StatelessWidget {
  final List<_Stat> stats;
  final Color textColor;
  final Color secColor;
  final Color borderColor;
  const _MobileStats({
    required this.stats,
    required this.textColor,
    required this.secColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(child: _StatItem(stat: stats[0], textColor: textColor, secColor: secColor)),
          Container(width: 1, height: 56, color: borderColor),
          Expanded(child: _StatItem(stat: stats[1], textColor: textColor, secColor: secColor)),
        ]),
        const SizedBox(height: 16),
        Container(height: 1, color: borderColor),
        const SizedBox(height: 16),
        Row(children: [
          Expanded(child: _StatItem(stat: stats[2], textColor: textColor, secColor: secColor)),
          Container(width: 1, height: 56, color: borderColor),
          Expanded(child: _StatItem(stat: stats[3], textColor: textColor, secColor: secColor)),
        ]),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final _Stat stat;
  final Color textColor;
  final Color secColor;
  final bool showDivider;

  const _StatItem({
    required this.stat,
    required this.textColor,
    required this.secColor,
    this.showDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(children: [
            Text(
              stat.count,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w800, fontSize: 42,
                color: kAccent, letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              stat.label,
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 12, color: secColor,
                height: 1.5, fontWeight: FontWeight.w500,
              ),
            ),
          ]),
        ),
        if (showDivider)
          Container(width: 1, height: 56, color: secColor.withValues(alpha: 0.15)),
      ],
    );
  }
}
