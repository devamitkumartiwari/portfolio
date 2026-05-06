import 'package:devamitkumartiwari/core/responsive.dart';
import 'package:devamitkumartiwari/widgets/section_fade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_utils.dart';
import '../widgets/custom_button.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  static const String _linkedInUrl =
      'https://www.linkedin.com/in/beingamitkumartiwari/';
  static const String _githubUrl = 'https://github.com/amitkumartiwaridis';
  static const String _mediumUrl = 'https://beingamitkumartiwari.medium.com/';
  static const String _resumeUrl =
      'https://drive.google.com/file/d/1Y5L2lfl9TRwK6EpWSbE6-yKFhO5RHixO/view?usp=sharing';

  Widget _ghostButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white54),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Icon(icon),
      label: Text(label),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hPadding = context.sectionPadding;
    final isDesktop = context.isDesktop;

    final nameFontSize = isDesktop ? 52.0 : 36.0;

    return RepaintBoundary(
      child: Stack(
        children: [
          // Background SVG — heavily darkened so text is legible
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/svg/dashboard.svg',
              semanticsLabel: 'Background illustration',
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.65),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
            ),
          ),

          // Extra dark tint layer for depth
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.35),
              ),
            ),
          ),

          // Main content
          Container(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: hPadding),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Avatar with gradient ring
                SectionFadeIn(
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [scheme.primary, scheme.tertiary],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/images/dev_image.webp',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                // Greeting + name
                SectionFadeIn(
                  delay: const Duration(milliseconds: 200),
                  child: Column(
                    children: [
                      Text(
                        "Hello, I'm",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: scheme.primary,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Amit Kumar Tiwari',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: nameFontSize,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.1,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Role pill + specializations
                SectionFadeIn(
                  delay: const Duration(milliseconds: 400),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: scheme.primaryContainer.withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Senior Full-Stack Mobile Architect',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: scheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Fintech · AI · Security',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 36),

                // CTA buttons
                SectionFadeIn(
                  delay: const Duration(milliseconds: 600),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      _ghostButton(
                        icon: Icons.link,
                        label: 'LinkedIn',
                        onPressed: () => myLaunchUrl(_linkedInUrl),
                      ),
                      _ghostButton(
                        icon: Icons.code,
                        label: 'GitHub',
                        onPressed: () => myLaunchUrl(_githubUrl),
                      ),
                      _ghostButton(
                        icon: Icons.density_medium_outlined,
                        label: 'Medium',
                        onPressed: () => myLaunchUrl(_mediumUrl),
                      ),
                      CustomButton(
                        icon: Icons.file_download_outlined,
                        label: 'Download Resume',
                        onPressed: () => myLaunchUrl(_resumeUrl),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
