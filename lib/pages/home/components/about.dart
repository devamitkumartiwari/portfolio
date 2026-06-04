import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/app_strings.dart';
import '../../../core/l10n/locale_provider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../provider/theme.dart';

// ── Expertise card data (icon + color, labels come from AppStrings) ────────────
class _ExpertiseItem {
  final IconData icon;
  final Color color;
  final String Function(AppStrings) label;
  const _ExpertiseItem(this.icon, this.color, this.label);
}

const _kExpertise = [
  _ExpertiseItem(Icons.architecture_rounded,    Color(0xFF7C3AED), _expMobileArch),
  _ExpertiseItem(Icons.phone_iphone_rounded,    Color(0xFF54C5F8), _expFlutter),
  _ExpertiseItem(Icons.android_rounded,         Color(0xFF3DDC84), _expAndroid),
  _ExpertiseItem(Icons.storage_rounded,         Color(0xFF6DB33F), _expSpringBoot),
  _ExpertiseItem(Icons.security_rounded,        Color(0xFFE74C3C), _expFintechSecurity),
  _ExpertiseItem(Icons.shield_outlined,         Color(0xFFE67E22), _expOwasp),
  _ExpertiseItem(Icons.bug_report_outlined,     Color(0xFFE91E63), _expVapt),
  _ExpertiseItem(Icons.lock_outline_rounded,    Color(0xFF9B59B6), _expEncryption),
  _ExpertiseItem(Icons.auto_awesome_rounded,    Color(0xFF06B6D4), _expAi),
];

// label accessor functions — avoids closures in const
String _expMobileArch(AppStrings s)     => s.expMobileArch;
String _expFlutter(AppStrings s)        => s.expFlutter;
String _expAndroid(AppStrings s)        => s.expAndroid;
String _expSpringBoot(AppStrings s)     => s.expSpringBoot;
String _expFintechSecurity(AppStrings s)=> s.expFintechSecurity;
String _expOwasp(AppStrings s)          => s.expOwasp;
String _expVapt(AppStrings s)           => s.expVapt;
String _expEncryption(AppStrings s)     => s.expEncryption;
String _expAi(AppStrings s)             => s.expAi;

// ─────────────────────────────────────────────────────────────────────────────
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isDark    = ref.watch(themeProvider).isDarkMode;
      final textColor = isDark ? kDarkText    : kLightText;
      final secColor  = isDark ? kDarkTextSec : kLightTextSec;
      final isMobile  = ScreenHelper.isMobile(context);
      final s         = ref.watch(stringsProvider);

      return PageWrapper(
        extraPadding: EdgeInsets.symmetric(
          horizontal: isMobile ? 24 : 40,
          vertical:   isMobile ? 48 : 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              s.aboutLabel,
              style: GoogleFonts.outfit(
                color: kAccent, fontSize: 12,
                fontWeight: FontWeight.w700, letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              s.aboutHeading,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w800,
                fontSize: isMobile ? 32 : 42,
                height: 1.15, color: textColor, letterSpacing: -1,
              ),
            ),
            const SizedBox(height: 40),

            // ── Bio ─────────────────────────────────────────────────────────
            _BioParagraph(s: s, secColor: secColor, textColor: textColor),

            const SizedBox(height: 56),

            // ── Expertise heading ────────────────────────────────────────────
            Text(
              s.areasOfExpertise,
              style: GoogleFonts.outfit(
                fontSize:   isMobile ? 22 : 26,
                fontWeight: FontWeight.w800,
                color:      textColor,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              s.expertiseSubtitle,
              style: GoogleFonts.outfit(fontSize: 14, color: secColor),
            ),
            const SizedBox(height: 28),
            _ExpertiseGrid(
              isMobile:  isMobile,
              isDark:    isDark,
              secColor:  secColor,
              textColor: textColor,
              strings:   s,
            ),
          ],
        ),
      );
    });
  }
}

// ── Bio paragraph ─────────────────────────────────────────────────────────────
class _BioParagraph extends StatelessWidget {
  final AppStrings s;
  final Color secColor;
  final Color textColor;
  const _BioParagraph({required this.s, required this.secColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          s.aboutBio1,
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w700, fontSize: 19,
            height: 1.5, color: textColor,
          ),
        ),
        const SizedBox(height: 18),
        Text(s.aboutBio2,
            style: GoogleFonts.outfit(color: secColor, height: 1.82, fontSize: 15)),
        const SizedBox(height: 14),
        Text(s.aboutBio3,
            style: GoogleFonts.outfit(color: secColor, height: 1.82, fontSize: 15)),
        const SizedBox(height: 28),
        Wrap(
          spacing: 10, runSpacing: 10,
          children: [
            _PillarChip(s.expMobileArch,    const Color(0xFF7C3AED)),
            _PillarChip(s.expFintechSecurity, const Color(0xFFE74C3C)),
            _PillarChip(s.expAi,            const Color(0xFF06B6D4)),
            _PillarChip(s.svcFullStackTitle, const Color(0xFF6DB33F)),
          ],
        ),
      ],
    );
  }
}

class _PillarChip extends StatelessWidget {
  final String label;
  final Color  color;
  const _PillarChip(this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color:        color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(8),
        border:       Border.all(color: color.withValues(alpha: 0.30)),
      ),
      child: Text(label,
          style: GoogleFonts.outfit(color: color, fontSize: 13, fontWeight: FontWeight.w600)),
    );
  }
}

// ── Expertise grid ────────────────────────────────────────────────────────────
class _ExpertiseGrid extends StatelessWidget {
  final bool isMobile;
  final bool isDark;
  final Color secColor;
  final Color textColor;
  final AppStrings strings;

  const _ExpertiseGrid({
    required this.isMobile,
    required this.isDark,
    required this.secColor,
    required this.textColor,
    required this.strings,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final cols      = isMobile ? 1 : (ScreenHelper.isTablet(context) ? 2 : 3);
      final itemWidth = (constraints.maxWidth - (cols - 1) * 16) / cols;

      return Wrap(
        spacing: 16, runSpacing: 16,
        children: _kExpertise.map((e) {
          return _ExpertiseCard(
            data:      e,
            width:     itemWidth,
            isDark:    isDark,
            secColor:  secColor,
            textColor: textColor,
            strings:   strings,
          );
        }).toList(),
      );
    });
  }
}

class _ExpertiseCard extends StatefulWidget {
  final _ExpertiseItem data;
  final double width;
  final bool isDark;
  final Color secColor;
  final Color textColor;
  final AppStrings strings;

  const _ExpertiseCard({
    required this.data,
    required this.width,
    required this.isDark,
    required this.secColor,
    required this.textColor,
    required this.strings,
  });

  @override
  State<_ExpertiseCard> createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<_ExpertiseCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final c      = widget.data.color;
    final card   = widget.isDark ? kDarkCard   : kLightCard;
    final border = widget.isDark ? kDarkBorder : kLightBorder;

    return MouseRegion(
      cursor:  SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration:   const Duration(milliseconds: 160),
        width:      widget.width,
        padding:    const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color:        _hovered ? c.withValues(alpha: 0.07) : card,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: _hovered ? c.withValues(alpha: 0.45) : border),
        ),
        child: Row(children: [
          Container(
            width: 40, height: 40,
            decoration: BoxDecoration(
              color: c.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(widget.data.icon, color: c, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              widget.data.label(widget.strings),
              style: GoogleFonts.outfit(
                fontSize:   13,
                fontWeight: FontWeight.w600,
                color:      _hovered ? c : widget.textColor,
                height:     1.3,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
