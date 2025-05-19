import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/animated_camel_case_text.dart';
import '../utils/app_utils.dart';
import '../widgets/custom_button.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  final String linkedInUrl =
      'https://www.linkedin.com/in/beingamitkumartiwari/';
  final String githubUrl = 'https://github.com/amitkumartiwaridis';
  final String mediumUrl = 'https://beingamitkumartiwari.medium.com/';
  final String resumeUrl = "https://drive.google.com/file/d/13XU0eRJMfdAv_ai5LrfqsFQXCb6C3zYf/view?usp=sharing";


  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/svg/dashboard.svg',
            semanticsLabel: 'Guy Logo',
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha((0.3 * 255).round()),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
          ),
        ),

        // Main content
        Container(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header/Profile image
              const Hero(
                tag: 'profile-pic',
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/dev_image.webp'),
                ),
              ),
              const SizedBox(height: 24),
              AnimatedCamelCaseText(
                text: "Hi, I'm Amit Kumar Tiwari",
                backgroundColor: Colors.blue.withAlpha((0.3 * 255).round()),
                textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'RobotoMono',
                ),
              ),
              const SizedBox(height: 8),

              AnimatedCamelCaseText(
                text: 'Software Developer & Mobile App Enthusiast',
                backgroundColor: Colors.pinkAccent.withAlpha((0.3 * 255).round()),
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70,
                  fontFamily: 'RobotoMono',
                ),
              ),
              const SizedBox(height: 24),

              // Social links
              Wrap(
                spacing: 24,
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children: [
                  CustomButton(
                    icon: Icons.link,
                    label: 'LinkedIn',
                    onPressed: () => myLaunchUrl(linkedInUrl),
                  ),
                  CustomButton(
                    icon: Icons.code,
                    label: 'GitHub',
                    onPressed: () => myLaunchUrl(githubUrl),
                  ),
                  CustomButton(
                    icon: Icons.density_medium_outlined,
                    label: 'Medium',
                    onPressed: () => myLaunchUrl(mediumUrl),
                  ),
                  CustomButton(
                    icon: Icons.file_download_outlined,
                    label: 'Download Resume',
                    onPressed: () => myLaunchUrl(resumeUrl),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
