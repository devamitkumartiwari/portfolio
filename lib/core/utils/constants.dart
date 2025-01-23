import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/header_item.dart';
import 'utils.dart';


const Color kPrimaryColor = Color(0xFF8BC7FA);
const Color kBackgroundColor = Color(0xFFFCDEE8);
const Color kDangerColor = Colors.red;
const Color kCaptionColor = Color.fromRGBO(90, 109, 128, 1.0);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class AppConstants {
  static const linkedInUrl =
      "https://www.linkedin.com/in/beingamitkumartiwari/";
  static const githubUrl = "https://github.com/amitkumartiwaridis";
  static const mediumUrl = "https://medium.com/@amtechnovation/android-architecture-component-mvvm-part-1-a2e7cff07a76";

  static const _assets = "assets/";
  static const _outputs = "outputs/";

  static const _svg = _assets + "svg/";
  static const guySvg = _svg + "dashboard.svg";

  static const _images = _assets + "images/";
  static const devImage = _images + "dev_image.webp";


  static const _techImages = _images + "technology/";
  static const androidImage = _techImages + "android.png";
  static const composeImage = _techImages + "compose.png";
  static const flutterImage = _techImages + "flutter.png";
  static const iosImage = _techImages + "ios.png";
  static const javaImage = _techImages + "java.png";
  static const javascriptImage = _techImages + "js.png";
  static const kotlinImage = _techImages + "kotlin.png";
  static const springImage = _techImages + "spring.png";



  static const _gifs = _outputs + "gif/";
  static const portfolioGif = _gifs + "mobile.gif";

  static List<NameOnTap> socialLoginListItems = [
    NameOnTap(
        title: "Email",
        iconData: Icons.mail_outline_rounded,
        onTap: () {
          Utilty.openMail();
        }),
    NameOnTap(
        title: "LinkedIN",
        iconData: FontAwesomeIcons.linkedinIn,
        onTap: () {
          Utilty.openUrl(linkedInUrl);
        }),
    NameOnTap(
        title: "Github",
        iconData: FontAwesomeIcons.github,
        onTap: () {
          Utilty.openUrl(githubUrl);
        }),
    NameOnTap(
        title: "Medium",
        iconData: FontAwesomeIcons.medium,
        onTap: () {
          Utilty.openUrl(mediumUrl);
        }),
  ];
}
