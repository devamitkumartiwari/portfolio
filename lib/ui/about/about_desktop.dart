import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:universal_html/html.dart' as html;
import 'package:portfolio/utils/export.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.coloredPhoto,
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Space.y!,
                      Text(
                        'Technologies I have worked with:',
                        style: AppText.l1b!.copyWith(
                          color: AppTheme.currentTheme!.primary,
                        ),
                      ),
                      Space.y!,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: kTools
                              .map((e) => ToolTechWidget(
                                    techName: e,
                                  ))
                              .toList(),
                        ),
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AboutMeData(
                            data: "Name",
                            information: AboutUtils.name,
                          ),
                          AboutMeData(
                            data: "Address",
                            information: AboutUtils.address,
                          ),
                          AboutMeData(
                            data: "Email",
                            information: AboutUtils.email,
                          ),
                          AboutMeData(
                            data: "Mobile",
                            information: AboutUtils.phone,
                          ),
                        ],
                      ),
                      Space.y1!,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: AppDimensions.normalize(13),
                              width: AppDimensions.normalize(40),
                              child: OutlinedButton(
                                onPressed: () =>
                                    html.window.open(StaticUtils.resume, 'pdf'),
                                child: const Text(
                                  "Resume",
                                ),
                              ),
                            ),
                            // Space.x1!,
                            // Container(
                            //   color: Colors.grey[900]!,
                            //   width: AppDimensions.normalize(30),
                            //   height: AppDimensions.normalize(0.5),
                            // ),
                            // ...WorkUtils.logos.asMap().entries.map(
                            //       (e) => Expanded(
                            //         child: CommunityIconBtn(
                            //           icon: e.value,
                            //           link: WorkUtils.communityLinks[e.key],
                            //           height:
                            //               WorkUtils.communityLogoHeight[e.key],
                            //         ),
                            //       ),
                            //     )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
