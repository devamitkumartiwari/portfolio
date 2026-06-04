import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/locale_provider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../models/project.dart';
import '../../../provider/theme.dart';

class WorkSection extends StatelessWidget {
  final List<ProjectModel> projects;
  const WorkSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isDark   = ref.watch(themeProvider).isDarkMode;
      final isMobile = ScreenHelper.isMobile(context);

      return PageWrapper(
        extraPadding: EdgeInsets.symmetric(
          horizontal: isMobile ? 24 : 40,
          vertical:   24,
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          final cols      = isMobile ? 1 : 2;
          final cardWidth = (constraints.maxWidth - (cols - 1) * 20) / cols;

          return Wrap(
            spacing:    20,
            runSpacing: 20,
            children: projects.map((project) => _WorkCard(
                  project: project,
                  width:   cardWidth,
                  isDark:  isDark,
                )).toList(),
          );
        }),
      );
    });
  }
}

class _WorkCard extends ConsumerStatefulWidget {
  final ProjectModel project;
  final double width;
  final bool isDark;

  const _WorkCard({
    required this.project,
    required this.width,
    required this.isDark,
  });

  @override
  ConsumerState<_WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends ConsumerState<_WorkCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final cardColor   = widget.isDark ? kDarkCard    : kLightCard;
    final borderColor = widget.isDark ? kDarkBorder  : kLightBorder;
    final textColor   = widget.isDark ? kDarkText    : kLightText;
    final secColor    = widget.isDark ? kDarkTextSec : kLightTextSec;

    final s         = ref.watch(stringsProvider);
    final localized = s.projectStrings(widget.project.key);

    return MouseRegion(
      cursor:  SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () {
          if (widget.project.internalLink) {
            context.goNamed(widget.project.projectLink);
          } else {
            Utilty.openUrl(widget.project.projectLink);
          }
        },
        child: AnimatedContainer(
          duration:   const Duration(milliseconds: 200),
          width:      widget.width,
          padding:    const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: _hovered ? kAccent.withValues(alpha: 0.06) : cardColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _hovered ? kAccent.withValues(alpha: 0.5) : borderColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Badge + icon row ───────────────────────────────────────────
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color:        kAccent.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      localized.badge,
                      style: GoogleFonts.outfit(
                        color: kAccent, fontSize: 11, fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (widget.project.appPhotos != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        widget.project.appPhotos!,
                        width: 40, height: 40, fit: BoxFit.contain,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),

              // ── Title ──────────────────────────────────────────────────────
              Text(
                widget.project.title,
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w700, fontSize: 20,
                  color: textColor, height: 1.3,
                ),
              ),
              const SizedBox(height: 10),

              // ── Description ────────────────────────────────────────────────
              Text(
                localized.desc,
                style: GoogleFonts.outfit(color: secColor, height: 1.65, fontSize: 14),
              ),
              const SizedBox(height: 12),

              // ── Tech stack ─────────────────────────────────────────────────
              if (widget.project.techUsed.isNotEmpty)
                Wrap(
                  spacing: 6, runSpacing: 4,
                  children: widget.project.techUsed.map((t) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: (widget.isDark ? kDarkBg : kLightBorder).withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: borderColor.withValues(alpha: 0.6)),
                    ),
                    child: Text(
                      t.name,
                      style: GoogleFonts.outfit(
                        fontSize: 11, color: secColor, fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    ),
                  )).toList(),
                ),
              const SizedBox(height: 12),

              // ── CTA ────────────────────────────────────────────────────────
              Row(
                children: [
                  Text(
                    localized.cta,
                    style: GoogleFonts.outfit(
                      color: kAccent, fontWeight: FontWeight.w600, fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Icon(Icons.arrow_forward_rounded, color: kAccent, size: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
