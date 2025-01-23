import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../models/technology.dart';
import '../../../provider/theme.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Flex(
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "About Me",
                        style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 35.0,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        "I'm Amit Kumar Tiwari, A Flutter and Android Developer and Technical Consultant",
                        style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),

                      const Text(
                        "I have done my Computer Science and Engineering on 2014. I have been developing Mobile Apps for more than 9 years now. I have worked as a Team and as an Individual in various organization and launched the apps in Play Store as well as in Appstore. In my free time I use to write Technical Blog in Medium. Always love to learn new technologies and to succeed in an environment of growth and excellence and earn a job which provides me job satisfaction and self-development and help me achieve personal as well as organisational goals.",
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Image.asset(AppConstants.devImage, width:  300.0,),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Technology I have worked with",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Consumer(builder: (context, ref, _) {
                        return Wrap(
                          spacing: 20.0,
                          runSpacing: 20.0,
                          children: TechnologyConstants.technologyLearned
                              .map(
                                (e) =>
                                Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: ref
                                        .watch(themeProvider)
                                        .isDarkMode
                                        ? Colors.green[50]
                                        : Colors.grey[50],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: ScreenHelper.isMobile(context)
                                      ? constraints.maxWidth / 2.0 - 20.0
                                      : constraints.maxWidth / 4.0 - 20.0,
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          SizedBox(
                                              width: 90,
                                              height: 90,
                                              child:
                                              Image.asset(e.logo, )),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            e.name,
                                            style: GoogleFonts.josefinSans(
                                              fontSize: 12.0,
                                              height: 1.8,
                                              color: ref
                                                  .watch(themeProvider)
                                                  .isDarkMode
                                                  ? Colors.black
                                                  : Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                          )
                              .toList(),
                        );
                      }),
                      const SizedBox(
                        height: 70.0,
                      )
                    ],
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
