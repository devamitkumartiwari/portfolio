import 'package:flutter/material.dart';

import 'export.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';
  static const String logo1024 = 'assets/app/1024.png';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    "https://in.linkedin.com/in/beingamitkumartiwari",
    "https://github.com/devamitkumartiwari?tab=repositories",
    "https://medium.com/@amtechnovation/android-architecture-component-mvvm-part-1-a2e7cff07a76"
  ];

  static const String resume =
      'https://drive.google.com/file/d/19C2Dg5nLwPuJcz23a1_08pLzDrcMmR3Y/view?usp=sharing';

  static const String gitHub =
      'https://github.com/devamitkumartiwari?tab=repositories';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    // Portfolio(),
    Contact(),
    Footer(),
  ];
}
