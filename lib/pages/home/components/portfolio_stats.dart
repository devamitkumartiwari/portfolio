import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../models/stat.dart';

final List<Stat> stats = [
  Stat(count: "20+", text: "Projects"),
  Stat(count: "6", text: "Awards"),
  Stat(
      count: (DateTime.now().year - 2015).toString(),
      text: "Years of experience"),
];

class PortfolioStats extends StatelessWidget {
  const PortfolioStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            children: stats.map((stat) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                // Just use the helper here really
                width: ScreenHelper.isMobile(context)
                    ? constraint.maxWidth / 2.0 - 20
                    : (constraint.maxWidth / 4.0 - 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      stat.count,
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      stat.text,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: kCaptionColor,
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
