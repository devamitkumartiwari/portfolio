class PolicySectionModel {
  final String title;
  final String body;
  const PolicySectionModel({required this.title, required this.body});
}

List<PolicySectionModel> getDetailedPolicySections({bool isForKids = false}) {
  return [
    const PolicySectionModel(
      title: '1. Introduction',
      body:
          'This Privacy Policy applies to the **VitaCore** and **Space Cleaner** mobile applications '
          'developed and published by **Amit Kumar Tiwari** ("Developer", "I", "me", or "my"), '
          'as well as all other digital products published under my developer account. '
          'This includes, but is not limited to:\n\n'
          '• VitaCore — comprehensive wellness, nutrition, and sleep tracker\n'
          '• Space Cleaner / Cache Cleaner — storage optimizer and junk remover\n'
          '• File Manager & Explorer — professional file management tool\n'
          '• Drink Water Reminder — hydration tracker\n'
          '• Workout & Fitness apps — exercise tracking and planning\n'
          '• Device Safety & Security apps — device health and protection tools\n'
          '• Portfolio and productivity apps\n\n'
          'This policy also applies to my developer portfolio website at '
          'https://hireamit.web.app. '
          'By installing or using any of these applications, you agree to the '
          'collection and use of information as described in this policy.',
    ),
    const PolicySectionModel(
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
          'c) File Management & Storage Data (File Manager & Cache Cleaner)\n'
          'Our File Manager and Cache Cleaner apps require access to your device storage '
          'to provide their core features: browsing files, organizing folders, '
          'identifying large files, and removing junk/cache data. \n\n'
          '• All processing is performed entirely on-device.\n'
          '• We do not collect, view, or transmit your files, photos, videos, or documents to any server.\n'
          '• We do not track which files you open or modify.\n\n'
          'd) Health, Wellness & Fitness Data (VitaCore / Workout / Drink Water apps)\n'
          'Nutrition logs, water intake, sleep patterns, meditation history, '
          'fasting intervals, weight, and BMI metrics are stored locally on your device. '
          'This data is used to provide insights, charts, and progress tracking.\n\n'
          'Medical Disclaimer: VitaCore is for general wellness purposes only and '
          'is not intended to diagnose or treat any medical condition. This app '
          'does not provide medical advice. Always seek the advice of a physician '
          'before making health decisions.\n\n'
          'This data is never transmitted to external servers or shared with third parties.\n\n'
          'e) Notification & Reminder Preferences\n'
          'When you grant notification permission, we store your reminder schedule '
          'locally to deliver timely alerts (e.g., water intake, meditation sessions, '
          'fasting windows, workout schedules). We do not share this data.\n\n'
          'f) Voluntarily Provided Information\n'
          'If you contact us via email for support, we collect the information you '
          'choose to share (name, email address, issue description).',
    ),
    const PolicySectionModel(
      title: '3. Permissions Requested & Why',
      body:
          'Our apps request only the permissions necessary for their core functionality:\n\n'
          '• Storage / Files & Media / All Files Access — Required by File Manager '
          'to manage files and folders, and by Cache Cleaner to identify and remove '
          'junk files. This permission is used strictly for on-device file management.\n\n'
          '• Notifications — Required by VitaCore, Drink Water, and Workout apps '
          'to send wellness and health reminders at scheduled times.\n\n'
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
    const PolicySectionModel(
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
    const PolicySectionModel(
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
    const PolicySectionModel(
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
    const PolicySectionModel(
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
    const PolicySectionModel(
      title: '8. Data Deletion & Your Rights',
      body:
          'We respect your privacy and give you control over your data.\n\n'
          'a) In-App Deletion\n'
          'You can delete your local data at any time by clearing the application '
          'cache/data in your device settings or by uninstalling the application.\n\n'
          'b) Data Deletion Requests (Google Play Requirement)\n'
          'Although our apps do not typically store personal data on external servers, '
          'you have the right to request the deletion of any information we may '
          'have (such as support emails). To submit a request, please email us at '
          'amtechnovation@gmail.com with the subject "Data Deletion Request". '
          'We will process your request and delete all associated data within 30 days.\n\n'
          'c) Your Choices\n'
          '• Access — request a copy of the data we hold about you\n'
          '• Correction — request correction of inaccurate data\n'
          '• Opt-Out — disable analytics via device settings\n\n'
          'EU/EEA users have rights under GDPR. California residents have rights under CCPA.',
    ),
    PolicySectionModel(
      title: "9. Children's Privacy",
      body: isForKids
          ? 'I am committed to protecting the privacy of children. Our apps for children '
              'are designed to be safe and do not collect any personally identifiable '
              'information from children. We comply with COPPA, GDPR, and the Google Play '
              'Families Policy to ensure a secure environment for younger users.'
          : 'Our apps are not directed at children under the age of 13 (or under 16 '
              'in the European Economic Area). We do not knowingly collect personal '
              'information from children.\n\n'
              'If you are a parent or guardian and believe your child has provided us '
              'with personal information, please contact us immediately at '
              'amtechnovation@gmail.com and we will take steps to delete that information.',
    ),
    const PolicySectionModel(
      title: '10. Cookies & Tracking (Website)',
      body:
          'Our portfolio website (https://hireamit.web.app) '
          'does not use advertising cookies or tracking pixels. Firebase Hosting '
          'may use essential session cookies for performance and security. '
          'Our mobile applications do not use cookies.',
    ),
    const PolicySectionModel(
      title: '11. Changes to This Privacy Policy',
      body:
          'We reserve the right to update this Privacy Policy at any time. '
          'When we make material changes, we will update the "Last Updated" date '
          'at the top of this page and, where appropriate, notify you through '
          'an in-app notification or the app store update notes.\n\n'
          'Your continued use of our applications after any changes constitutes '
          'your acceptance of the revised Privacy Policy.',
    ),
    const PolicySectionModel(
      title: '12. Contact Us',
      body:
          'If you have any questions, concerns, or requests regarding this '
          'Privacy Policy or the handling of your data, please contact us:\n\n'
          'Developer: Amit Kumar Tiwari\n'
          'Email: amtechnovation@gmail.com\n'
          'Location: Lucknow, Uttar Pradesh, India\n'
          'Website: https://hireamit.web.app\n\n'
          'We aim to respond to all privacy-related inquiries within 30 days.',
    ),
  ];
}
