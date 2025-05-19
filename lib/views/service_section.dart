
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      width: double.infinity,
      color: Theme.of(context).colorScheme.secondary.withAlpha((0.05 * 255).round()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 24),
          const Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              _HoverServiceCard(
                icon: Icons.smartphone,
                title: 'Mobile App Design & Development',
                description:
                'Designing and developing sleek, responsive, and high-performance mobile applications tailored for both Android and iOS platforms.',
              ),
              _HoverServiceCard(
                icon: Icons.code,
                title: 'Web Development',
                description:
                'Building dynamic and scalable web solutions using Spring Boot REST APIs, React.js for responsive frontends, and Flutter Web for seamless cross-platform experiences.',
              ),
              _HoverServiceCard(
                icon: Icons.design_services,
                title: 'Design UI & UX',
                description:
                'Designing intuitive and engaging user interfaces using Figma, tailored for Flutter apps across Android, iOS, and Web platforms.',
              ),
              _HoverServiceCard(
                icon: Icons.analytics,
                title: 'Analytics',
                description: 'Tracking and improving app performance.',
              ),
            ],
          ),
        ],
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
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 280,
        decoration: BoxDecoration(
          color: _isHovered
              ? theme.colorScheme.primary.withAlpha((0.08 * 255).round())
              : theme.cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: _isHovered
              ? [
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 16,
              offset: Offset(0, 8),
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
          onTap: () {}, // Optional: Make cards clickable
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [

                Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Icon(
                  widget.icon,
                  size: 48,
                  color: Colors.pink.withAlpha((0.5 * 255).round()),
                  // color: theme.colorScheme.primary,
                ),

                const SizedBox(height: 16),
                Text(
                  widget.description,
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
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
