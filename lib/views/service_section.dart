import 'package:devamitkumartiwari/core/responsive.dart';
import 'package:devamitkumartiwari/widgets/section_fade.dart';
import 'package:devamitkumartiwari/widgets/section_heading.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hPadding = context.sectionPadding;
    final isMobile = context.isMobile;

    const cards = [
      _HoverServiceCard(
        icon: Icons.account_balance_wallet_outlined,
        title: 'Fintech Mobile Development',
        description:
            'Building secure, high-performance fintech apps for Android and iOS — UAE PASS KYC (SOP1–SOP3), biometric auth, payment integrations (Stripe, Razorpay, QPay, Lean), and VAPT-compliant architectures supporting 100K+ users.',
      ),
      _HoverServiceCard(
        icon: Icons.dns_outlined,
        title: 'Spring Boot API & Microservices',
        description:
            'Designing and deploying scalable REST APIs and microservices handling 1M+ monthly transactions, with AES-256 encryption, SSL pinning, and deep integrations with OAB, SmartPay, and banking APIs.',
      ),
      _HoverServiceCard(
        icon: Icons.auto_awesome_outlined,
        title: 'AI Systems & Agentic Chatbots',
        description:
            'Building Agentic AI chatbot systems and AI-driven automation workflows for enterprise fintech — reducing manual processes, improving user interaction, and enabling intelligent decision pipelines.',
      ),
      _HoverServiceCard(
        icon: Icons.security_outlined,
        title: 'Security & Compliance',
        description:
            'Implementing OWASP-aligned mobile security: AES-256 encryption, SSL pinning, certificate transparency, biometric authentication, jailbreak/root detection, and full VAPT compliance auditing.',
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: hPadding),
      width: double.infinity,
      color: scheme.surface,
      child: SectionFadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Services'),
            const SizedBox(height: 24),
            if (isMobile)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: cards
                    .map((c) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: c,
                        ))
                    .toList(),
              )
            else
              const Wrap(
                spacing: 20,
                runSpacing: 20,
                children: cards,
              ),
          ],
        ),
      ),
    );
  }
}

class _HoverServiceCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;

  const _HoverServiceCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<_HoverServiceCard> createState() => _HoverServiceCardState();
}

class _HoverServiceCardState extends State<_HoverServiceCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final isMobile = context.isMobile;

    final cardWidth = isMobile
        ? double.infinity
        : context.isTablet
            ? 260.0
            : 280.0;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: cardWidth,
        decoration: BoxDecoration(
          color: _isHovered
              ? scheme.primaryContainer.withValues(alpha: 0.5)
              : scheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: scheme.primary.withValues(alpha: 0.15),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  )
                ]
              : [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Icon(
                  widget.icon,
                  size: 48,
                  color: scheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  widget.title,
                  style: textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  widget.description,
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
