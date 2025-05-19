
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/project.dart';
import '../utils/app_utils.dart';
import '../widgets/custom_button.dart';

class ProjectsSection extends StatelessWidget {
  final List<ProjectModel> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary.withAlpha(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: projects.map((project) {
              return _HoverProjectCard(
                title: project.title,
                description: project.description,
                url: project.projectLink,
              );
            }).toList(),
          ),
        ],
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
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 300,
        decoration: BoxDecoration(
          color: _hovered
              ? theme.colorScheme.primary.withAlpha((0.07 * 255).round())
              : theme.cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: _hovered
              ? [
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 18,
              offset: Offset(0, 6),
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
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
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
