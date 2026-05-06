import 'package:devamitkumartiwari/core/responsive.dart';
import 'package:devamitkumartiwari/widgets/section_fade.dart';
import 'package:devamitkumartiwari/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../utils/hover_chip.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final hPadding = context.sectionPadding;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: hPadding),
      width: double.infinity,
      color: scheme.surfaceContainerLow,
      child: SectionFadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'About Me'),
            const SizedBox(height: 20),
            Text(
              "Senior Mobile & Full-Stack Architect with 10+ years of experience",
              style: textTheme.headlineSmall?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "I'm Amit Kumar Tiwari — a Senior Full-Stack Mobile Architect specialising in fintech, secure digital identity, and AI-driven applications. I completed my B.Tech in Computer Science in 2014 and have spent over a decade building production-grade mobile systems.\n\nI've architected fintech platforms supporting 100K+ users and microservices handling 1M+ monthly transactions. I'm an expert in UAE PASS KYC (SOP1–SOP3), payment gateway integrations (Stripe, Razorpay, QPay, Lean, SmartPay, OAB), and VAPT-compliant mobile architectures with AES-256 encryption, SSL pinning, and biometric authentication.\n\nMore recently I've been building Agentic AI chatbot systems and AI workflows for automation in enterprise fintech — and shipping Spring Boot microservice APIs that power mobile-first banking experiences.",
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.8,
              ),
            ),
            const SizedBox(height: 28),
            Text(
              "Technologies & Expertise",
              style: textTheme.titleMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.start,
              children: [
                // Mobile
                'Flutter',
                'Android SDK',
                'Kotlin',
                'Swift',
                'Jetpack Compose',
                // Backend
                'Spring Boot',
                'Microservices',
                'REST APIs',
                // AI
                'Agentic AI',
                'AI Workflows',
                // Languages
                'Dart',
                'Java',
                'SQL',
                // Architecture
                'Clean Architecture',
                'MVVM',
                'BLoC',
                // Payments
                'Stripe',
                'Razorpay',
                'QPay',
                // Security
                'OWASP',
                'AES-256',
                'SSL Pinning',
                'UAE PASS',
                // Maps
                'Google Maps',
                'Geofencing',
              ].map((tech) {
                return HoverChip(
                  label: Text(
                    tech,
                    style: textTheme.labelLarge?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
