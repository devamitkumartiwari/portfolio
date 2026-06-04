import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/l10n/locale_provider.dart';
import '../../core/utils/constants.dart';
import '../../core/utils/screen_helper.dart';
import '../../models/project.dart';
import '../../provider/theme.dart';
import '../../widgets/header.dart';
import '../home/components/footer.dart';
import 'components/work_section.dart';

class MyWorksScreen extends ConsumerWidget {
  const MyWorksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final textColor = isDark ? kDarkText : kLightText;
    final secColor = isDark ? kDarkTextSec : kLightTextSec;
    final isMobile = ScreenHelper.isMobile(context);
    final s = ref.watch(stringsProvider);

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
                          s.worksPortfolioLabel,
                          style: GoogleFonts.outfit(
                            color: kAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.5,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          s.worksTitle,
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
                          s.worksSubtitle,
                          style: GoogleFonts.outfit(
                            color: secColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  WorkSection(projects: ProjectModel.projects),
                  const SizedBox(height: 24),
                  const Footer(),
                ],
              ),
            ),
          ),
          const CommonHeader(),
        ],
      ),
    );
  }
}
