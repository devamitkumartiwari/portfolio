import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../models/footer_item.dart';
import '../../../provider/theme.dart';

final List<FooterItem> footerItems = [
  FooterItem(
      iconData: Icons.location_city,
      title: "ADDRESS",
      text1: "Noida, Uttar Pradesh, India",
      onTap: () {
        Utilty.openMyLocation();
      }),
  FooterItem(
      iconData: Icons.call,
      title: "PHONE",
      text1: "+91 9871192371",
      onTap: () {
        Utilty.openMyPhoneNo();
      }),
  FooterItem(
      iconData: Icons.mail_outline,
      title: "EMAIL",
      text1: "tiwariamitkumar1415@gmail.com",
      onTap: () {
        Utilty.openMail();
      }),
  FooterItem(
      iconData: Icons.message,
      title: "WHATSAPP",
      text1: "+91 9871192371",
      onTap: () {
        Utilty.openWhatsapp();
      })
];

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }
}

Widget _buildUi(double width, BuildContext context) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Consumer(builder: (context, ref, _) {
                  return Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: footerItems
                        .map(
                          (footerItem) =>
                          InkWell(
                            onTap: footerItem.onTap,
                            child: Container(
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
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            footerItem.iconData,
                                            color: kPrimaryColor,
                                            size: 28,
                                          ),
                                          const SizedBox(
                                            width: 15.0,
                                          ),
                                          Text(
                                            footerItem.title,
                                            style: GoogleFonts.josefinSans(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700,
                                              color: ref
                                                  .watch(themeProvider)
                                                  .isDarkMode
                                                  ? Colors.black
                                                  : Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        footerItem.text1,
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
                                        height: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                    )
                        .toList(),
                  );
                }),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Developed in 💛 with Flutter",
                      style: TextStyle(
                        color: kCaptionColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    ),
  );
}
