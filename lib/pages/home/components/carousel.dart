import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/app_strings.dart';
import '../../../core/l10n/locale_provider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../provider/theme.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenHelper.isMobile(context);
    final bool isTablet = ScreenHelper.isTablet(context);

    return SizedBox(
      width: double.infinity,
      child: PageWrapper(
        extraPadding: EdgeInsets.symmetric(
          horizontal: isMobile ? 24.0 : 40.0,
          vertical:   isMobile ? 40.0 : 80.0,
        ),
        child: isMobile
            ? const _HeroContent(isMobile: true)
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: isTablet ? 7 : 6,
                    child: const _HeroContent(isMobile: false),
                  ),
                  const SizedBox(width: 48),
                  Expanded(flex: 5, child: _HeroIllustration()),
                ],
              ),
      ),
    );
  }
}

List<_TechPill> _buildTechStack(AppStrings s) => [
  const _TechPill('Flutter',     Color(0xFF54C5F8)),
  const _TechPill('Spring Boot', Color(0xFF6DB33F)),
  const _TechPill('Android',     Color(0xFF3DDC84)),
  const _TechPill('Kotlin',      Color(0xFF7F52FF)),
  _TechPill(s.expFintechSecurity, const Color(0xFFE74C3C)),
  _TechPill(s.expAi,              const Color(0xFF06B6D4)),
];

class _TechPill {
  final String label;
  final Color  color;
  const _TechPill(this.label, this.color);
}

class _HeroContent extends ConsumerWidget {
  final bool isMobile;
  const _HeroContent({required this.isMobile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark      = ref.watch(themeProvider).isDarkMode;
    final secColor    = isDark ? kDarkTextSec : kLightTextSec;
    final cardColor   = isDark ? kDarkCard    : kLightCard;
    final borderColor = isDark ? kDarkBorder  : kLightBorder;
    final s           = ref.watch(stringsProvider);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(-0.5, -0.4),
          radius: 1.0,
          colors: [
            kAccent.withValues(alpha: isDark ? 0.09 : 0.05),
            Colors.transparent,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          // ── Role badge ────────────────────────────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            decoration: BoxDecoration(
              color:        kAccent.withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(100),
              border:       Border.all(color: kAccent.withValues(alpha: 0.30)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 7, height: 7,
                  decoration: BoxDecoration(
                    color: kAccent, shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: kAccent.withValues(alpha: 0.6), blurRadius: 6)],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  s.heroRole,
                  style: GoogleFonts.outfit(
                    color: kAccent, fontSize: 13,
                    fontWeight: FontWeight.w600, letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
          )
              .animate()
              .fadeIn(delay: 80.ms, duration: 500.ms)
              .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

          const SizedBox(height: 24),

          // ── Name — violet→cyan gradient ───────────────────────────────────
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [kAccent, kAccentCyan],
              begin:  Alignment.topLeft,
              end:    Alignment.bottomRight,
            ).createShader(bounds),
            blendMode: BlendMode.srcIn,
            child: Text(
              "Amit Kumar\nTiwari",
              style: GoogleFonts.outfit(
                fontSize:      isMobile ? 46.0 : 64.0,
                fontWeight:    FontWeight.w800,
                height:        1.08,
                color:         Colors.white,
                letterSpacing: -1.8,
              ),
            ),
          )
              .animate()
              .fadeIn(delay: 180.ms, duration: 600.ms)
              .slideY(begin: 0.25, end: 0, curve: Curves.easeOut),

          const SizedBox(height: 22),

          // ── Bio ───────────────────────────────────────────────────────────
          Text(
            s.heroBio,
            style: GoogleFonts.outfit(
              fontSize: isMobile ? 14 : 15,
              color:    secColor,
              height:   1.8,
            ),
          ).animate().fadeIn(delay: 300.ms, duration: 500.ms),

          const SizedBox(height: 28),

          // ── Tech pills (localized) ────────────────────────────────────────
          Wrap(
            spacing: 8, runSpacing: 8,
            children: _buildTechStack(s).map((t) => _StackPill(t)).toList(),
          ).animate().fadeIn(delay: 400.ms, duration: 400.ms),

          const SizedBox(height: 32),

          // ── Social icons ──────────────────────────────────────────────────
          Wrap(
            spacing: 10,
            children: AppConstants.socialLoginListItems.map((e) => _SocialButton(
              iconData: e.iconData, onTap: e.onTap,
              isDark: isDark, cardColor: cardColor, borderColor: borderColor,
            )).toList(),
          ).animate().fadeIn(delay: 460.ms, duration: 400.ms),

          const SizedBox(height: 32),

          // ── CTA buttons ───────────────────────────────────────────────────
          Wrap(
            spacing: 14, runSpacing: 12,
            children: [
              _PrimaryButton(
                label: s.ctaDownloadCV,
                icon:  Icons.download_rounded,
                onTap: () => Utilty.openUrl(AppConstants.cvUrl),
              ),
              _OutlineButton(
                label:       s.ctaViewWorks,
                icon:        Icons.work_outline_rounded,
                onTap:       () => Utilty.openUrl(AppConstants.githubUrl),
                isDark:      isDark,
                borderColor: borderColor,
              ),
            ],
          ).animate().fadeIn(delay: 520.ms, duration: 400.ms),
        ],
      ),
    );
  }
}

// ── Stack pill ────────────────────────────────────────────────────────────────
class _StackPill extends StatefulWidget {
  final _TechPill data;
  const _StackPill(this.data);
  @override State<_StackPill> createState() => _StackPillState();
}
class _StackPillState extends State<_StackPill> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    final c = widget.data.color;
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        padding:  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color:        c.withValues(alpha: _hovered ? 0.18 : 0.10),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: c.withValues(alpha: _hovered ? 0.55 : 0.28)),
        ),
        child: Text(
          widget.data.label,
          style: GoogleFonts.outfit(
            color: c, fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}

// ── Hero illustration ─────────────────────────────────────────────────────────
class _HeroIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: SvgPicture.asset(AppConstants.guySvg, semanticsLabel: 'Developer illustration'),
    )
        .animate()
        .fadeIn(delay: 200.ms, duration: 800.ms)
        .scale(begin: const Offset(0.88, 0.88), end: const Offset(1, 1),
               duration: 700.ms, curve: Curves.easeOut);
  }
}

// ── Social button ─────────────────────────────────────────────────────────────
class _SocialButton extends StatefulWidget {
  final Object? iconData;
  final VoidCallback onTap;
  final bool isDark;
  final Color cardColor, borderColor;
  const _SocialButton({required this.iconData, required this.onTap,
      required this.isDark, required this.cardColor, required this.borderColor});
  @override State<_SocialButton> createState() => _SocialButtonState();
}
class _SocialButtonState extends State<_SocialButton> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          width: 40, height: 40,
          decoration: BoxDecoration(
            color: _hovered ? kAccent : widget.cardColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: _hovered ? kAccent : widget.borderColor),
          ),
          child: Center(
            child: widget.iconData is FaIconData
                ? FaIcon(widget.iconData as FaIconData, size: 15,
                    color: _hovered ? Colors.white : (widget.isDark ? kDarkTextSec : kLightTextSec))
                : Icon(widget.iconData as IconData?, size: 17,
                    color: _hovered ? Colors.white : (widget.isDark ? kDarkTextSec : kLightTextSec)),
          ),
        ),
      ),
    );
  }
}

// ── Primary CTA ───────────────────────────────────────────────────────────────
class _PrimaryButton extends StatefulWidget {
  final String label; final IconData icon; final VoidCallback onTap;
  const _PrimaryButton({required this.label, required this.icon, required this.onTap});
  @override State<_PrimaryButton> createState() => _PrimaryButtonState();
}
class _PrimaryButtonState extends State<_PrimaryButton> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: _hovered
                  ? [const Color(0xFF9B59F5), kAccentCyan]
                  : [kAccent, const Color(0xFF8B45F0)],
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: _hovered
                ? [BoxShadow(color: kAccent.withValues(alpha: 0.40), blurRadius: 22, offset: const Offset(0, 8))]
                : [],
          ),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(widget.icon, color: Colors.white, size: 17),
            const SizedBox(width: 8),
            Text(widget.label, style: GoogleFonts.outfit(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14)),
          ]),
        ),
      ),
    );
  }
}

// ── Outline CTA ───────────────────────────────────────────────────────────────
class _OutlineButton extends StatefulWidget {
  final String label; final IconData icon; final VoidCallback onTap;
  final bool isDark; final Color borderColor;
  const _OutlineButton({required this.label, required this.icon, required this.onTap,
      required this.isDark, required this.borderColor});
  @override State<_OutlineButton> createState() => _OutlineButtonState();
}
class _OutlineButtonState extends State<_OutlineButton> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    final textColor = _hovered ? kAccent : (widget.isDark ? kDarkTextSec : kLightTextSec);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          decoration: BoxDecoration(
            color: _hovered ? kAccent.withValues(alpha: 0.08) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: _hovered ? kAccent : widget.borderColor, width: 1.5),
          ),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(widget.icon, color: textColor, size: 17),
            const SizedBox(width: 8),
            Text(widget.label, style: GoogleFonts.outfit(color: textColor, fontWeight: FontWeight.w600, fontSize: 14)),
          ]),
        ),
      ),
    );
  }
}
