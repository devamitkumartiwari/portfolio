import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/screen_helper.dart';
import '../../provider/theme.dart';
import '../../widgets/header.dart';
import '../home/components/footer.dart';

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
                          'Effective Date: June 19, 2026  ·  Last Updated: June 19, 2026',
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
    final sections = [
      const _PolicySection(
        title: '1. Introduction',
        body:
            'This Privacy Policy applies to all mobile applications and digital products '
            'developed and published by Amit Kumar Tiwari ("Developer", "I", "me", or "my"), '
            'including but not limited to:\n\n'
            '• Space Cleaner — storage optimizer for Android and iOS\n'
            '• Drink Water Reminder — hydration tracker\n'
            '• Workout & Fitness apps — exercise tracking and planning\n'
            '• Device Safety & Security apps — device health and protection tools\n'
            '• Portfolio and productivity apps\n\n'
            'This policy also applies to my developer portfolio website at '
            'https://amitkumartiwarimobiledeveloper.web.app. '
            'By installing or using any of these applications, you agree to the '
            'collection and use of information as described in this policy.',
      ),
      const _PolicySection(
        title: '2. Information We Collect',
        body:
            'The type of information collected depends on the specific application. '
            'In general, we may collect the following categories of data:\n\n'
            'a) Device & Technical Information\n'
            'Device model, operating system version, unique device identifiers, '
            'IP address, app version, crash logs, and diagnostic data. This information '
            'is used solely for app performance monitoring and bug fixing.\n\n'
            'b) Usage Data\n'
            'How you interact with app features (e.g., screens visited, buttons tapped, '
            'session duration). This data is anonymous and used to improve user experience.\n\n'
            'c) Storage & File Data (Space Cleaner)\n'
            'The Space Cleaner app requires access to your device storage to scan for '
            'junk files, cached data, residual files, and duplicate content. '
            'All scanning and cleaning operations are performed entirely on-device. '
            'No files, file names, or file contents are ever uploaded to any server.\n\n'
            'd) Health & Fitness Data (Workout / Drink Water apps)\n'
            'Hydration logs, workout records, step counts, and reminder preferences '
            'are stored locally on your device. This data is never transmitted to '
            'external servers or shared with third parties.\n\n'
            'e) Notification Preferences\n'
            'When you grant notification permission, we store your reminder schedule '
            'locally to deliver timely alerts (e.g., water intake reminders, workout '
            'schedules). We do not share this data.\n\n'
            'f) Voluntarily Provided Information\n'
            'If you contact us via email for support, we collect the information you '
            'choose to share (name, email address, issue description).',
      ),
      const _PolicySection(
        title: '3. Permissions Requested & Why',
        body:
            'Our apps request only the permissions necessary for their core functionality:\n\n'
            '• Storage / Files & Media — Required by Space Cleaner to scan and remove '
            'junk files. Required by other apps to save logs or export data locally.\n\n'
            '• Notifications — Required by Drink Water and Workout apps to send '
            'health reminders at scheduled times.\n\n'
            '• Internet Access — Required for crash reporting (Firebase Crashlytics), '
            'fetching app updates, and displaying ads (if applicable).\n\n'
            '• Battery Optimization / Run in Background — Required to deliver '
            'notifications and background reminders reliably on Android.\n\n'
            '• Receive Boot Completed — Required to restart scheduled reminders '
            'after device reboot.\n\n'
            '• Device & App History (Device Safety apps) — Required to assess '
            'installed apps and identify potential security issues. '
            'This data is processed locally and never uploaded.\n\n'
            'No permission is used for purposes beyond what is disclosed here.',
      ),
      const _PolicySection(
        title: '4. How We Use Your Information',
        body:
            'We use the information collected for the following purposes:\n\n'
            '• To provide and maintain the core functionality of each application\n'
            '• To send scheduled reminders and notifications you have requested\n'
            '• To monitor app performance and fix crashes or errors\n'
            '• To analyze aggregate, anonymous usage patterns to improve our apps\n'
            '• To respond to your support requests and inquiries\n'
            '• To comply with legal obligations\n\n'
            'We do not use your data for automated decision-making or profiling.',
      ),
      const _PolicySection(
        title: '5. Data Storage & Security',
        body:
            'Most data processed by our apps (file scan results, health logs, '
            'reminder schedules) is stored exclusively on your local device and '
            'is never transmitted to our servers.\n\n'
            'Where data is transmitted (e.g., crash reports via Firebase Crashlytics), '
            'it is encrypted in transit using industry-standard TLS/HTTPS protocols '
            'and stored on secure Google Cloud infrastructure.\n\n'
            'We implement reasonable technical and organizational measures to protect '
            'your information against unauthorized access, loss, or misuse. However, '
            'no method of transmission or storage is 100% secure, and we cannot '
            'guarantee absolute security.',
      ),
      const _PolicySection(
        title: '6. Data Sharing & Third-Party Services',
        body:
            'We do not sell, trade, or rent your personal information to any third party.\n\n'
            'We may share limited, anonymized technical data with the following '
            'trusted third-party service providers to operate our apps:\n\n'
            '• Google Firebase (Firebase Crashlytics, Firebase Analytics, Firebase Hosting) '
            '— crash reporting and anonymous usage analytics. '
            'Privacy policy: https://policies.google.com/privacy\n\n'
            '• Google Play Services — required for Android app distribution and updates. '
            'Privacy policy: https://policies.google.com/privacy\n\n'
            '• Apple App Store Services — required for iOS app distribution and updates. '
            'Privacy policy: https://www.apple.com/legal/privacy\n\n'
            '• Google AdMob (if ads are shown in a specific app) — displays '
            'interest-based advertisements. You can opt out via your device ad settings. '
            'Privacy policy: https://policies.google.com/privacy\n\n'
            'All third-party providers are contractually required to protect your data '
            'and may not use it for purposes beyond what we disclose.',
      ),
      const _PolicySection(
        title: '7. Data Retention',
        body:
            'Data stored locally on your device (health logs, file scan history, '
            'reminder settings) is retained until you uninstall the application or '
            'manually clear app data from your device settings.\n\n'
            'Crash reports and anonymous analytics sent to Firebase are retained '
            'for up to 90 days, after which they are automatically deleted.\n\n'
            'Support emails are retained for as long as necessary to resolve your '
            'inquiry and are then deleted.',
      ),
      const _PolicySection(
        title: '8. Your Rights & Choices',
        body:
            'Depending on your location, you may have the following rights regarding '
            'your personal data:\n\n'
            '• Access — request a copy of the data we hold about you\n'
            '• Correction — request correction of inaccurate data\n'
            '• Deletion — request deletion of your data ("right to be forgotten")\n'
            '• Opt-Out — disable analytics or ad personalization via device settings\n'
            '• Data Portability — request your data in a portable format\n\n'
            'EU/EEA users have rights under the General Data Protection Regulation (GDPR). '
            'California residents have rights under the California Consumer Privacy Act (CCPA).\n\n'
            'To exercise any of these rights, contact us at amtechnovation@gmail.com. '
            'We will respond within 30 days.\n\n'
            'You may also disable specific permissions (storage, notifications, etc.) '
            'at any time via your device Settings > Apps.',
      ),
      const _PolicySection(
        title: "9. Children's Privacy",
        body:
            'Our apps are not directed at children under the age of 13 (or under 16 '
            'in the European Economic Area). We do not knowingly collect personal '
            'information from children.\n\n'
            'If you are a parent or guardian and believe your child has provided us '
            'with personal information, please contact us immediately at '
            'amtechnovation@gmail.com and we will take steps to delete that information.',
      ),
      const _PolicySection(
        title: '10. Cookies & Tracking (Website)',
        body:
            'Our portfolio website (https://amitkumartiwarimobiledeveloper.web.app) '
            'does not use advertising cookies or tracking pixels. Firebase Hosting '
            'may use essential session cookies for performance and security. '
            'Our mobile applications do not use cookies.',
      ),
      const _PolicySection(
        title: '11. Changes to This Privacy Policy',
        body:
            'We reserve the right to update this Privacy Policy at any time. '
            'When we make material changes, we will update the "Last Updated" date '
            'at the top of this page and, where appropriate, notify you through '
            'an in-app notification or the app store update notes.\n\n'
            'Your continued use of our applications after any changes constitutes '
            'your acceptance of the revised Privacy Policy.',
      ),
      const _PolicySection(
        title: '12. Contact Us',
        body:
            'If you have any questions, concerns, or requests regarding this '
            'Privacy Policy or the handling of your data, please contact us:\n\n'
            'Developer: Amit Kumar Tiwari\n'
            'Email: amtechnovation@gmail.com\n'
            'Location: Lucknow, Uttar Pradesh, India\n'
            'Website: https://amitkumartiwarimobiledeveloper.web.app\n\n'
            'We aim to respond to all privacy-related inquiries within 30 days.',
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
