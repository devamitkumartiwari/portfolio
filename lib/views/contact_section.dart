import 'package:devamitkumartiwari/core/responsive.dart';
import 'package:devamitkumartiwari/widgets/section_fade.dart';
import 'package:devamitkumartiwari/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../utils/app_utils.dart';
import '../widgets/custom_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  static const String _email = 'tiwariamitkumar1415@gmail.com';
  static const String _phoneNumber = '+91 9871192371';
  static const String _whatsappNumber = '+919871192371';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final hPadding = context.sectionPadding;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: hPadding),
      width: double.infinity,
      color: scheme.surface,
      child: SectionFadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Contact Me'),
            const SizedBox(height: 20),
            Text(
              'Feel free to reach out via email, phone, or connect with me on LinkedIn, GitHub, or WhatsApp.',
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.start,
              children: [
                CustomButton(
                  icon: Icons.mail_outline,
                  label: 'Email',
                  onPressed: () => myLaunchUrl('mailto:$_email'),
                ),
                CustomButton(
                  icon: Icons.phone,
                  label: 'Call',
                  onPressed: () => myLaunchUrl('tel:$_phoneNumber'),
                ),
                CustomButton(
                  icon: Icons.chat_outlined,
                  label: 'WhatsApp',
                  onPressed: () => myLaunchUrl('https://wa.me/$_whatsappNumber'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
