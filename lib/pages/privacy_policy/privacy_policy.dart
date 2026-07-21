import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/screen_helper.dart';
import '../../provider/theme.dart';
import '../../widgets/header.dart';
import '../home/components/footer.dart';
import 'policy_sections.dart';

class PrivacyPolicyScreen extends ConsumerWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final textColor = isDark ? kDarkText : kLightText;
    final secColor = isDark ? kDarkTextSec : kLightTextSec;
    final isMobile = ScreenHelper.isMobile(context);

    return Scaffold(
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kHeaderHeight),
                  PageWrapper(
                    extraPadding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 24 : 40,
                      vertical: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LEGAL',
                          style: GoogleFonts.outfit(
                            color: kAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.5,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Privacy Policy',
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w800,
                            fontSize: isMobile ? 32 : 42,
                            height: 1.15,
                            color: textColor,
                            letterSpacing: -1,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Effective Date: June 27, 2024  ·  Last Updated: June 27, 2024',
                          style: GoogleFonts.outfit(
                            color: secColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 40),
                        _PolicyContent(
                          textColor: textColor,
                          secColor: secColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Footer(),
                ],
              ),
            ),
          ),
          const CommonHeader(title: 'Privacy Policy'),
        ],
      ),
    );
  }
}

class _PolicyContent extends StatelessWidget {
  final Color textColor;
  final Color secColor;

  const _PolicyContent({required this.textColor, required this.secColor});

  @override
  Widget build(BuildContext context) {
    final sections = getDetailedPolicySections();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: sections
          .map((s) => _SectionWidget(
                section: s,
                textColor: textColor,
                secColor: secColor,
              ))
          .toList(),
    );
  }
}

class _SectionWidget extends StatelessWidget {
  final PolicySectionModel section;
  final Color textColor;
  final Color secColor;

  const _SectionWidget({
    required this.section,
    required this.textColor,
    required this.secColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            section.body,
            style: GoogleFonts.outfit(
              fontSize: 15,
              height: 1.7,
              color: secColor,
            ),
          ),
        ],
      ),
    );
  }
}
