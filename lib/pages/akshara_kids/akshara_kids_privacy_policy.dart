import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/screen_helper.dart';
import '../../provider/theme.dart';
import '../../widgets/header.dart';
import '../home/components/footer.dart';

class AksharaKidsPrivacyPolicyScreen extends ConsumerWidget {
  const AksharaKidsPrivacyPolicyScreen({super.key});

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
                          'Privacy Policy for Akshara Kids',
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
                          'Effective Date: July 20, 2024  ·  Last Updated: July 20, 2024',
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
          const CommonHeader(title: 'Akshara Kids Privacy'),
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
    final sections = [
      const _PolicySection(
        title: '1. Introduction',
        body:
            'This Privacy Policy applies to the **Akshara Kids** mobile application '
            'developed by **Amit Kumar Tiwari** ("Developer", "I", "me", or "my"). '
            '**Akshara Kids** is an educational application designed to help children '
            'learn and practice numbers and letters through interactive play.\n\n'
            'I am committed to protecting the privacy of the children who use my app. '
            'This policy explains how I handle information in compliance with the '
            'Children\'s Online Privacy Protection Act (COPPA), the General Data Protection Regulation (GDPR), '
            'and the Google Play Families Policy.',
      ),
      const _PolicySection(
        title: '2. No Collection of Personal Information',
        body:
            '**Akshara Kids does not collect any personal information from children.**\n\n'
            'I do not require users to create an account, sign in, or provide any '
            'personally identifiable information (such as name, address, email, or phone number) '
            'to use the application. The app is designed to be fully functional without '
            'the collection of any personal data.',
      ),
      const _PolicySection(
        title: '3. Data Processing & Storage',
        body:
            'All learning progress and app settings are processed and stored **locally '
            'on your device**. No data related to the child\'s learning patterns or '
            'interactions with numbers and letters is transmitted to external servers.',
      ),
      const _PolicySection(
        title: '4. Advertisements',
        body:
            'Akshara Kids may display advertisements to support its ongoing development. '
            'To ensure a safe environment for children, I adhere to the following rules:\n\n'
            '• **Child-Safe Ads:** All ads are served using child-safe settings. '
            'They are filtered to be appropriate for children and do not include '
            'interest-based advertising or remarketing.\n'
            '• **Non-Personalized:** The ads shown are non-personalized and are '
            'not based on the user\'s personal information or browsing history.\n'
            '• **Clearly Identifiable:** Ads are clearly distinguishable from the '
            'educational content of the app to avoid any confusion for the child.',
      ),
      const _PolicySection(
        title: '5. Permissions Requested',
        body:
            'The app may request only the minimum necessary permissions to function:\n\n'
            '• **Internet Access:** Used solely for displaying child-safe advertisements '
            'and providing links to other educational apps developed by me (protected by a parental gate).\n'
            '• **Network State:** Used to check for an active internet connection.',
      ),
      const _PolicySection(
        title: '6. Parental Gate',
        body:
            'Any external links (such as to the Google Play Store or my portfolio website) '
            'are protected by a **Parental Gate**. This ensures that children do not '
            'unintentionally leave the app or access external content without adult supervision.',
      ),
      const _PolicySection(
        title: '7. Third-Party Services',
        body:
            'I use limited third-party services to help maintain the app:\n\n'
            '• **Google Play Services / AdMob:** To serve child-safe advertisements. '
            'Privacy policy: https://policies.google.com/privacy\n\n'
            'These providers are required to handle any technical identifiers (like IP addresses '
            'used for ad delivery) in compliance with children\'s privacy laws.',
      ),
      const _PolicySection(
        title: '8. Changes to This Privacy Policy',
        body:
            'I may update this Privacy Policy from time to time. Any changes will be '
            'reflected on this page with an updated "Last Updated" date. I encourage '
            'parents to review this policy periodically.',
      ),
      const _PolicySection(
        title: '9. Contact Me',
        body:
            'If you have any questions or concerns about this Privacy Policy or the '
            'Akshara Kids app, please contact me at:\n\n'
            '**Amit Kumar Tiwari**\n'
            'Email: amtechnovation@gmail.com\n'
            'Website: https://hireamit.web.app',
      ),
    ];

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

class _PolicySection {
  final String title;
  final String body;
  const _PolicySection({required this.title, required this.body});
}

class _SectionWidget extends StatelessWidget {
  final _PolicySection section;
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
