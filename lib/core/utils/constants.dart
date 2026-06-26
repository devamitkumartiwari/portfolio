import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/header_item.dart';
import 'utils.dart';

// ── Dark palette ──────────────────────────────────────────────────────────────
const Color kDarkBg          = Color(0xFF0F0F14);
const Color kDarkSurface     = Color(0xFF18181F);
const Color kDarkCard        = Color(0xFF22222D);
const Color kDarkBorder      = Color(0xFF2E2E3D);
const Color kDarkText        = Color(0xFFF1F1F5);
const Color kDarkTextSec     = Color(0xFF8A8A9E);

// ── Light palette ─────────────────────────────────────────────────────────────
const Color kLightBg         = Color(0xFFFAFAFE);
const Color kLightSurface    = Color(0xFFFFFFFF);
const Color kLightCard       = Color(0xFFF1F1F9);
const Color kLightBorder     = Color(0xFFE0E0EE);
const Color kLightText       = Color(0xFF0D0D14);
const Color kLightTextSec    = Color(0xFF6B6B80);

// ── Accent ────────────────────────────────────────────────────────────────────
const Color kAccent          = Color(0xFF7C3AED); // violet
const Color kAccentCyan      = Color(0xFF06B6D4); // cyan

// ── Legacy aliases (keep so untouched files still compile) ────────────────────
const Color kCaptionColor    = kDarkTextSec;
const Color kPrimaryColor    = kAccent;
const Color kBackgroundColor = kDarkBg;

// ── Layout widths ─────────────────────────────────────────────────────────────
const double kDesktopMaxWidth = 1200.0;
const double kTabletMaxWidth  = 860.0;
const double kHeaderHeight    = 68.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .9;

class AppConstants {
  static const linkedInUrl =
      "https://www.linkedin.com/in/beingamitkumartiwari/";
  static const githubUrl = "https://github.com/devamitkumartiwari";
  static const mediumUrl =
      "https://medium.com/@amtechnovation/android-architecture-component-mvvm-part-1-a2e7cff07a76";
  static const cvUrl =
      "https://drive.google.com/file/d/1lbZRmrSqILBFZrUZnSJVF3KZ2lih9p3I/view?usp=sharing";

  static const _assets     = "assets/";
  static const _svg        = "${_assets}svg/";
  static const guySvg      = "${_svg}dashboard.svg";

  static const _images     = "${_assets}images/";
  static const devImage    = "${_images}dev_image.webp";

  static const _techImages     = "${_images}technology/";
  static const androidImage    = "${_techImages}android.png";
  static const composeImage    = "${_techImages}compose.png";
  static const flutterImage    = "${_techImages}flutter.png";
  static const iosImage        = "${_techImages}ios.png";
  static const javaImage       = "${_techImages}java.png";
  static const javascriptImage = "${_techImages}js.png";
  static const kotlinImage     = "${_techImages}kotlin.png";
  static const springImage     = "${_techImages}spring.png";

  static const _gifs       = "outputs/gif/";
  static const portfolioGif = "${_gifs}mobile.gif";

  static List<NameOnTap> socialLoginListItems = [
    NameOnTap(
      title: "Email",
      iconData: Icons.mail_outline_rounded,
      onTap: Utilty.openMail,
    ),
    NameOnTap(
      title: "LinkedIn",
      iconData: FontAwesomeIcons.linkedinIn,
      onTap: () => Utilty.openUrl(linkedInUrl),
    ),
    NameOnTap(
      title: "Github",
      iconData: FontAwesomeIcons.github,
      onTap: () => Utilty.openUrl(githubUrl),
    ),
    NameOnTap(
      title: "Medium",
      iconData: FontAwesomeIcons.medium,
      onTap: () => Utilty.openUrl(mediumUrl),
    ),
  ];
}
