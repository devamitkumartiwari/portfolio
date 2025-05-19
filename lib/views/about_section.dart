import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/hover_chip.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
            'About Me',
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 26,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          Text(
            "I'm Amit Kumar Tiwari, A Flutter and Android Developer and Technical Consultant",
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          Text(
            "I have done my Computer Science and Engineering on 2014. I have been developing Mobile Apps for more than 9 years now. I have worked as a Team and as an Individual in various organization and launched the apps in Play Store as well as in Appstore. In my free time I use to write Technical Blog in Medium. Always love to learn new technologies and to succeed in an environment of growth and excellence and earn a job which provides me job satisfaction and self-development and help me achieve personal as well as organisational goals.",
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 16),
          Text(
            "Technology I have worked with",
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.titleMedium,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 24,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: [
              HoverChip(
                label: Text(
                  'Flutter',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              HoverChip(
                label: Text(
                  'Compose Multiplatform',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              HoverChip(
                label: Text(
                  'Native Android',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              HoverChip(
                label: Text(
                  'Native iOS',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),

              HoverChip(
                label: Text(
                  'Spring Boot',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),

              HoverChip(
                label: Text(
                  'Java',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),

              HoverChip(
                label: Text(
                  'Kotlin',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),

              HoverChip(
                label: Text(
                  'Dart',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              HoverChip(
                label: Text(
                  'Java Script',
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),


              // Chip(label: Text('Flutter')),
              // Chip(label: Text('Compose Multiplatform')),
              // Chip(label: Text('Native Android')),
              // Chip(label: Text('Native iOS')),
              // Chip(label: Text('Spring Boot')),
              // Chip(label: Text('Java')),
              // Chip(label: Text('Kotlin')),
              // Chip(label: Text('Dart')),
              // Chip(label: Text('Java Script')),
            ],
          ),
        ],
      ),
    );
  }
}
