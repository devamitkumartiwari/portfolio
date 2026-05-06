import 'package:devamitkumartiwari/core/responsive.dart';
import 'package:devamitkumartiwari/widgets/section_fade.dart';
import 'package:devamitkumartiwari/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../models/project.dart';
import '../utils/app_utils.dart';
import '../widgets/custom_button.dart';

class ProjectsSection extends StatelessWidget {
  final List<ProjectModel> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hPadding = context.sectionPadding;
    final isMobile = context.isMobile;

    final cards = projects.map((project) {
      return _HoverProjectCard(
        title: project.title,
        description: project.description,
        url: project.projectLink,
      );
    }).toList();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: hPadding),
      width: double.infinity,
      color: scheme.surfaceContainerLow,
      child: SectionFadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Projects'),
            const SizedBox(height: 24),
            if (isMobile)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: cards
                    .map((c) => Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: c,
                        ))
                    .toList(),
              )
            else
              Wrap(
                spacing: 24,
                runSpacing: 24,
                children: cards,
              ),
          ],
        ),
      ),
    );
  }
}

class _HoverProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String url;

  const _HoverProjectCard({
    required this.title,
    required this.description,
    required this.url,
  });

  @override
  State<_HoverProjectCard> createState() => _HoverProjectCardState();
}

class _HoverProjectCardState extends State<_HoverProjectCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final isMobile = context.isMobile;

    final cardWidth = isMobile
        ? double.infinity
        : context.isTablet
            ? 280.0
            : 300.0;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: cardWidth,
        decoration: BoxDecoration(
          color: _hovered
              ? scheme.primaryContainer.withValues(alpha: 0.5)
              : scheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16),
          boxShadow: _hovered
              ? [
                  BoxShadow(
                    color: scheme.primary.withValues(alpha: 0.15),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  )
                ]
              : [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  )
                ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: textTheme.bodyMedium?.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomRight,
                child: CustomButton(
                  icon: Icons.open_in_new,
                  label: 'View Project',
                  onPressed: () => myLaunchUrl(widget.url),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
