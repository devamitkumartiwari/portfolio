import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/screen_helper.dart';
import '../../provider/theme.dart';
import '../../widgets/header.dart';
import '../home/components/footer.dart';

class TermsConditionsScreen extends ConsumerWidget {
  const TermsConditionsScreen({super.key});

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
                          'Terms & Conditions',
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
                          'Effective Date: June 19, 2026  ·  Last Updated: June 19, 2026',
                          style: GoogleFonts.outfit(
                            color: secColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 40),
                        _TermsContent(
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
          const CommonHeader(title: 'Terms & Conditions'),
        ],
      ),
    );
  }
}

class _TermsContent extends StatelessWidget {
  final Color textColor;
  final Color secColor;

  const _TermsContent({required this.textColor, required this.secColor});

  @override
  Widget build(BuildContext context) {
    final sections = [
      const _TermsSection(
        title: '1. Acceptance of Terms',
        body:
            'By downloading, installing, or using any application developed by '
            'Amit Kumar Tiwari ("Developer", "I", "me", or "my") — including Space Cleaner, '
            'Drink Water Reminder, Workout & Fitness apps, Device Safety apps, and other '
            'applications — or by visiting the portfolio website at '
            'https://amitkumartiwarimobiledeveloper.web.app, you agree to be legally '
            'bound by these Terms & Conditions.\n\n'
            'If you do not agree with any part of these terms, please do not install '
            'or use the application.',
      ),
      const _TermsSection(
        title: '2. License Grant',
        body:
            'The Developer grants you a limited, non-exclusive, non-transferable, '
            'revocable license to install and use the application on devices you own '
            'or control, strictly for personal, non-commercial purposes.\n\n'
            'You may not:\n'
            '• Copy, modify, distribute, sell, or sublicense any part of the application\n'
            '• Reverse engineer, decompile, or disassemble the application\n'
            '• Use the application to build a competing product or service\n'
            '• Remove or alter any proprietary notices or labels\n'
            '• Use the application for any unlawful purpose\n\n'
            'This license terminates automatically if you violate any of these terms.',
      ),
      const _TermsSection(
        title: '3. Intellectual Property',
        body:
            'All content, features, and functionality within our applications — including '
            'but not limited to source code, user interface designs, graphics, icons, '
            'animations, and text — are the exclusive intellectual property of '
            'Amit Kumar Tiwari and are protected by applicable copyright, trademark, '
            'and other intellectual property laws of India and international treaties.\n\n'
            'Open-source components used in our applications are governed by their '
            'respective open-source licenses (e.g., MIT, Apache 2.0, BSD). '
            'Attribution notices are included within the apps where required.',
      ),
      const _TermsSection(
        title: '4. Health & Fitness Disclaimer',
        body:
            'Our health and wellness applications (including Drink Water Reminder '
            'and Workout & Fitness apps) are designed for general informational and '
            'motivational purposes only.\n\n'
            'IMPORTANT: The content in these applications does not constitute medical '
            'advice, diagnosis, or treatment. Always consult a qualified healthcare '
            'professional before starting any new exercise program, changing your diet, '
            'or making decisions about your health based on information provided by '
            'any of our applications.\n\n'
            'Hydration and fitness recommendations within the app are based on general '
            'guidelines and may not be appropriate for your individual health condition. '
            'Users with medical conditions should seek professional advice before use.',
      ),
      const _TermsSection(
        title: '5. Storage Cleaner Disclaimer',
        body:
            'The Space Cleaner application identifies files considered as junk, cache, '
            'residual, or temporary based on standard criteria. However:\n\n'
            '• You are solely responsible for reviewing files before deletion\n'
            '• Once deleted, files may not be recoverable\n'
            '• The Developer is not liable for any data loss resulting from the use '
            'of the cleaning features\n'
            '• We strongly recommend backing up important data before running '
            'any cleaning operation\n\n'
            'The app operates entirely on-device. No files or file metadata are '
            'ever uploaded to any external server.',
      ),
      const _TermsSection(
        title: '6. Device Safety Disclaimer',
        body:
            'Device Safety and Security applications provide general guidance and '
            'assessments based on publicly available information and on-device analysis. '
            'These tools are not a substitute for professional cybersecurity solutions.\n\n'
            'The Developer does not guarantee that use of security apps will prevent '
            'all security threats, malware infections, or data breaches. Results are '
            'informational and should be used as a guide only.',
      ),
      const _TermsSection(
        title: '7. In-App Purchases & Subscriptions',
        body:
            'Some of our applications may offer premium features through one-time '
            'purchases or subscriptions. All transactions are processed through '
            'Google Play Billing (Android) or Apple In-App Purchase (iOS).\n\n'
            '• Subscriptions automatically renew unless cancelled at least 24 hours '
            'before the end of the current billing period\n'
            '• Cancellations take effect at the end of the current subscription period; '
            'no partial refunds are provided for unused time\n'
            '• Refund requests are subject to the respective platform policies:\n'
            '  - Google Play: https://support.google.com/googleplay/answer/2479637\n'
            '  - Apple App Store: https://support.apple.com/en-us/HT204084\n\n'
            'Pricing is displayed in your local currency at the time of purchase.',
      ),
      const _TermsSection(
        title: '8. Advertisements',
        body:
            'Some free versions of our applications may display advertisements served '
            'by Google AdMob. These ads may be personalized based on your interests '
            'as determined by Google.\n\n'
            'You may opt out of personalized ads at any time:\n'
            '• Android: Settings > Google > Ads > Opt out of Ads Personalization\n'
            '• iOS: Settings > Privacy & Security > Apple Advertising > Personalized Ads\n\n'
            'Ad-free experiences are available through premium upgrade options within '
            'supported applications.',
      ),
      const _TermsSection(
        title: '9. Disclaimer of Warranties',
        body:
            'Our applications are provided on an "AS IS" and "AS AVAILABLE" basis '
            'without any warranties of any kind, either express or implied, including '
            'but not limited to implied warranties of merchantability, fitness for a '
            'particular purpose, or non-infringement.\n\n'
            'The Developer does not warrant that:\n'
            '• The application will function without interruption or errors\n'
            '• Defects will be corrected\n'
            '• The application is free of viruses or other harmful components\n'
            '• Results obtained from using the application will be accurate or reliable',
      ),
      const _TermsSection(
        title: '10. Limitation of Liability',
        body:
            'To the fullest extent permitted by applicable law, Amit Kumar Tiwari '
            'shall not be liable for any indirect, incidental, special, consequential, '
            'or punitive damages, including but not limited to:\n\n'
            '• Loss of data, profits, or goodwill\n'
            '• Device damage or data corruption arising from the use of our apps\n'
            '• Health outcomes resulting from following in-app health or fitness guidance\n'
            '• Files deleted through the Space Cleaner application\n'
            '• Service interruptions or unavailability\n\n'
            'In jurisdictions that do not allow exclusion of certain warranties or '
            'limitation of liability, our liability is limited to the maximum extent '
            'permitted by law.',
      ),
      const _TermsSection(
        title: '11. Third-Party Services & Links',
        body:
            'Our applications and website may integrate with or link to third-party '
            'services such as Google Play, Apple App Store, GitHub, LinkedIn, Medium, '
            'YouTube, and pub.dev.\n\n'
            'We are not responsible for the content, privacy practices, or availability '
            'of any third-party service. Links to external sites do not imply '
            'endorsement. Your use of third-party services is governed by their '
            'respective terms and privacy policies.',
      ),
      const _TermsSection(
        title: '12. Updates & Termination',
        body:
            'We may release updates, patches, or new versions of our applications '
            'at any time. Some updates may be required to continue using the app. '
            'Features may be added, modified, or removed at our discretion.\n\n'
            'We reserve the right to suspend or terminate access to any application '
            'or service at any time, with or without notice, for any reason including '
            'breach of these Terms & Conditions.',
      ),
      const _TermsSection(
        title: '13. Governing Law & Dispute Resolution',
        body:
            'These Terms & Conditions are governed by and construed in accordance '
            'with the laws of India, without regard to conflict of law principles.\n\n'
            'Any disputes arising from or related to these terms or our applications '
            'shall first be attempted to be resolved through good-faith negotiation. '
            'If unresolved, disputes shall be subject to the exclusive jurisdiction '
            'of the competent courts of Lucknow, Uttar Pradesh, India.',
      ),
      const _TermsSection(
        title: '14. Changes to These Terms',
        body:
            'We reserve the right to modify these Terms & Conditions at any time. '
            'Material changes will be communicated through an in-app notification '
            'or app store update notes. The "Last Updated" date at the top of this '
            'page will always reflect the most recent revision.\n\n'
            'Your continued use of any application after changes are posted '
            'constitutes your acceptance of the revised Terms & Conditions.',
      ),
      const _TermsSection(
        title: '15. Contact Us',
        body:
            'If you have any questions about these Terms & Conditions or need support '
            'with any of our applications, please reach out:\n\n'
            'Developer: Amit Kumar Tiwari\n'
            'Email: amtechnovation@gmail.com\n'
            'Location: Lucknow, Uttar Pradesh, India\n'
            'Website: https://amitkumartiwarimobiledeveloper.web.app\n\n'
            'We aim to respond to all inquiries within 5 business days.',
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

class _TermsSection {
  final String title;
  final String body;
  const _TermsSection({required this.title, required this.body});
}

class _SectionWidget extends StatelessWidget {
  final _TermsSection section;
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
