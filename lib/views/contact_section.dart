import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_utils.dart';
import '../widgets/custom_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  final String email = 'tiwariamitkumar1415@gmail.com';
  final String phoneNumber = '+91 9871192371'; // Use your phone number with + here
  final String whatsappNumber = '+91 9871192371'; // WhatsApp number without '+' and dashes


  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      width: double.infinity,
      color: Theme.of(context).colorScheme.secondary.withAlpha(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 26,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 24),
          Text(
            'Feel free to reach out via email, phone, or connect with me on LinkedIn, GitHub, or WhatsApp.',
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 24,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: [
              CustomButton(
                icon: Icons.mail_outline,
                label: 'Email',
                onPressed: () => myLaunchUrl('mailto:$email'),
              ),
              CustomButton(
                icon: Icons.phone,
                label: 'Call',
                onPressed: () => myLaunchUrl('tel:$phoneNumber'),
              ),
              CustomButton(
                icon: Icons.chat_outlined,
                label: 'WhatsApp',
                onPressed: () => myLaunchUrl('https://wa.me/$whatsappNumber'),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

