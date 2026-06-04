import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/app_strings.dart';
import '../../../core/l10n/locale_provider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../provider/theme.dart';

// ── Service card data ─────────────────────────────────────────────────────────
class _ServiceData {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const _ServiceData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}

List<_ServiceData> _buildServices(AppStrings s) => [
  _ServiceData(title: s.svcFlutterTitle,    subtitle: s.svcFlutterDesc,    icon: Icons.phone_iphone_rounded,  color: const Color(0xFF54C5F8)),
  _ServiceData(title: s.svcAndroidTitle,    subtitle: s.svcAndroidDesc,    icon: Icons.android_rounded,       color: const Color(0xFF3DDC84)),
  _ServiceData(title: s.svcSpringBootTitle, subtitle: s.svcSpringBootDesc, icon: Icons.storage_rounded,       color: const Color(0xFF6DB33F)),
  _ServiceData(title: s.svcFullStackTitle,  subtitle: s.svcFullStackDesc,  icon: Icons.layers_rounded,        color: const Color(0xFF7C3AED)),
  _ServiceData(title: s.svcBloggingTitle,   subtitle: s.svcBloggingDesc,   icon: Icons.article_outlined,      color: const Color(0xFF06B6D4)),
  _ServiceData(title: s.svcOpenSourceTitle, subtitle: s.svcOpenSourceDesc, icon: Icons.code_rounded,          color: const Color(0xFFF59E0B)),
];

// ── Process steps ─────────────────────────────────────────────────────────────
class _ProcessStep {
  final String title;
  final String desc;
  final IconData icon;
  const _ProcessStep(this.title, this.desc, this.icon);
}

List<_ProcessStep> _buildProcess(AppStrings s) => [
  _ProcessStep(s.proc1Title, s.proc1Desc, Icons.search_rounded),
  _ProcessStep(s.proc2Title, s.proc2Desc, Icons.draw_rounded),
  _ProcessStep(s.proc3Title, s.proc3Desc, Icons.developer_mode_rounded),
  _ProcessStep(s.proc4Title, s.proc4Desc, Icons.check_circle_outline_rounded),
  _ProcessStep(s.proc5Title, s.proc5Desc, Icons.rocket_launch_outlined),
  _ProcessStep(s.proc6Title, s.proc6Desc, Icons.loop_rounded),
];

// ─────────────────────────────────────────────────────────────────────────────
class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isDark = ref.watch(themeProvider).isDarkMode;
      final textColor = isDark ? kDarkText : kLightText;
      final secColor = isDark ? kDarkTextSec : kLightTextSec;
      final cardColor = isDark ? kDarkCard : kLightCard;
      final borderColor = isDark ? kDarkBorder : kLightBorder;
      final isMobile = ScreenHelper.isMobile(context);
      final s = ref.watch(stringsProvider);
      final services = _buildServices(s);
      final process  = _buildProcess(s);

      return PageWrapper(
        extraPadding: EdgeInsets.symmetric(
          horizontal: isMobile ? 24 : 40,
          vertical: isMobile ? 48 : 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Section header ───────────────────────────────────────────────
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SectionLabel(s.servicesLabel),
                    const SizedBox(height: 12),
                    Text(
                      s.servicesHeading,
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w800,
                        fontSize: isMobile ? 32 : 42,
                        height: 1.15,
                        color: textColor,
                        letterSpacing: -1,
                      ),
                    ),
                  ],
                ),
                if (!isMobile)
                  _DownloadCVButton(label: s.ctaDownloadCV),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              s.servicesSubtitle,
              style: GoogleFonts.outfit(color: secColor, fontSize: 15),
            ),
            const SizedBox(height: 48),

            // ── Service cards 3×2 ────────────────────────────────────────────
            LayoutBuilder(builder: (context, constraints) {
              final cols = isMobile ? 1 : (ScreenHelper.isTablet(context) ? 2 : 3);
              final cardWidth = (constraints.maxWidth - (cols - 1) * 20) / cols;
              return Wrap(
                spacing: 20,
                runSpacing: 20,
                children: services.map((svc) {
                  return _ServiceCard(
                    data: svc,
                    width: cardWidth,
                    cardColor: cardColor,
                    borderColor: borderColor,
                    textColor: textColor,
                    secColor: secColor,
                  );
                }).toList(),
              );
            }),

            const SizedBox(height: 64),

            // ── My process ───────────────────────────────────────────────────
            Text(
              s.myProcess,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              s.myProcessSubtitle,
              style: GoogleFonts.outfit(fontSize: 13, color: secColor),
            ),
            const SizedBox(height: 28),
            _ProcessStepper(
              steps:       process,
              isMobile:    isMobile,
              isDark:      isDark,
              textColor:   textColor,
              secColor:    secColor,
              borderColor: borderColor,
            ),

            if (isMobile) ...[
              const SizedBox(height: 32),
              _DownloadCVButton(label: s.ctaDownloadCV),
            ],
          ],
        ),
      );
    });
  }
}

// ── Download CV button ────────────────────────────────────────────────────────
class _DownloadCVButton extends StatefulWidget {
  final String label;
  const _DownloadCVButton({required this.label});

  @override
  State<_DownloadCVButton> createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<_DownloadCVButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => Utilty.openUrl(AppConstants.cvUrl),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: _hovered ? kAccent.withValues(alpha: 0.08) : Colors.transparent,
            border: Border.all(
              color: _hovered ? kAccent : kAccent.withValues(alpha: 0.45),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.download_rounded,
                  size: 16, color: _hovered ? kAccent : kAccent.withValues(alpha: 0.75)),
              const SizedBox(width: 6),
              Text(
                widget.label,
                style: GoogleFonts.outfit(
                  color: _hovered ? kAccent : kAccent.withValues(alpha: 0.75),
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Service card ──────────────────────────────────────────────────────────────
class _ServiceCard extends StatefulWidget {
  final _ServiceData data;
  final double width;
  final Color cardColor;
  final Color borderColor;
  final Color textColor;
  final Color secColor;

  const _ServiceCard({
    required this.data,
    required this.width,
    required this.cardColor,
    required this.borderColor,
    required this.textColor,
    required this.secColor,
  });

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final accent = widget.data.color;
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.width,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _hovered ? accent.withValues(alpha: 0.06) : widget.cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _hovered ? accent.withValues(alpha: 0.45) : widget.borderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(widget.data.icon, color: accent, size: 24),
            ),
            const SizedBox(height: 16),
            // Title
            Text(
              widget.data.title,
              style: GoogleFonts.outfit(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: widget.textColor,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 8),
            // Subtitle
            Text(
              widget.data.subtitle,
              style: GoogleFonts.outfit(
                fontSize: 13,
                color: widget.secColor,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Process stepper ───────────────────────────────────────────────────────────
class _ProcessStepper extends StatelessWidget {
  final List<_ProcessStep> steps;
  final bool isMobile;
  final bool isDark;
  final Color textColor;
  final Color secColor;
  final Color borderColor;

  const _ProcessStepper({
    required this.steps,
    required this.isMobile,
    required this.isDark,
    required this.textColor,
    required this.secColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Column(
        children: List.generate(steps.length, (i) {
          return _VerticalStep(
            step:        steps[i],
            index:       i + 1,
            isLast:      i == steps.length - 1,
            isDark:      isDark,
            textColor:   textColor,
            secColor:    secColor,
            borderColor: borderColor,
          );
        }),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(steps.length, (i) {
        return Expanded(
          child: _HorizontalStep(
            step:        steps[i],
            index:       i + 1,
            isFirst:     i == 0,
            isLast:      i == steps.length - 1,
            textColor:   textColor,
            secColor:    secColor,
            borderColor: borderColor,
          ),
        );
      }),
    );
  }
}

// ── Horizontal step (desktop) ─────────────────────────────────────────────────
class _HorizontalStep extends StatelessWidget {
  final _ProcessStep step;
  final int index;
  final bool isFirst;
  final bool isLast;
  final Color textColor;
  final Color secColor;
  final Color borderColor;

  const _HorizontalStep({
    required this.step,
    required this.index,
    required this.isFirst,
    required this.isLast,
    required this.textColor,
    required this.secColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final accent = index.isOdd ? kAccent : kAccentCyan;

    return Column(
      children: [
        // Connector line + circle row
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: isFirst ? Colors.transparent : borderColor,
              ),
            ),
            Container(
              width:  52,
              height: 52,
              decoration: BoxDecoration(
                color:  accent.withValues(alpha: 0.10),
                shape:  BoxShape.circle,
                border: Border.all(
                    color: accent.withValues(alpha: 0.35), width: 1.5),
              ),
              child: Icon(step.icon, color: accent, size: 22),
            ),
            Expanded(
              child: Container(
                height: 1,
                color: isLast ? Colors.transparent : borderColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),

        // Step number
        Text(
          index.toString().padLeft(2, '0'),
          style: GoogleFonts.outfit(
            color:       accent,
            fontSize:    11,
            fontWeight:  FontWeight.w800,
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(height: 4),

        // Title
        Text(
          step.title,
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(
            fontSize:   13,
            fontWeight: FontWeight.w700,
            color:      textColor,
          ),
        ),
        const SizedBox(height: 6),

        // Description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            step.desc,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 11,
              color:    secColor,
              height:   1.55,
            ),
          ),
        ),
      ],
    );
  }
}

// ── Vertical step (mobile) ────────────────────────────────────────────────────
class _VerticalStep extends StatelessWidget {
  final _ProcessStep step;
  final int index;
  final bool isLast;
  final bool isDark;
  final Color textColor;
  final Color secColor;
  final Color borderColor;

  const _VerticalStep({
    required this.step,
    required this.index,
    required this.isLast,
    required this.isDark,
    required this.textColor,
    required this.secColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final accent = index.isOdd ? kAccent : kAccentCyan;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left: circle + connector line
        Column(
          children: [
            Container(
              width:  44,
              height: 44,
              decoration: BoxDecoration(
                color:  accent.withValues(alpha: 0.10),
                shape:  BoxShape.circle,
                border: Border.all(
                    color: accent.withValues(alpha: 0.35), width: 1.5),
              ),
              child: Icon(step.icon, color: accent, size: 20),
            ),
            if (!isLast)
              Container(width: 1.5, height: 44, color: borderColor),
          ],
        ),
        const SizedBox(width: 16),

        // Right: content
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      index.toString().padLeft(2, '0'),
                      style: GoogleFonts.outfit(
                        color:       accent,
                        fontSize:    11,
                        fontWeight:  FontWeight.w800,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      step.title,
                      style: GoogleFonts.outfit(
                        fontSize:   14,
                        fontWeight: FontWeight.w700,
                        color:      textColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  step.desc,
                  style: GoogleFonts.outfit(
                    fontSize: 12,
                    color:    secColor,
                    height:   1.55,
                  ),
                ),
                SizedBox(height: isLast ? 0 : 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.outfit(
        color: kAccent,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        letterSpacing: 2.5,
      ),
    );
  }
}
