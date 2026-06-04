import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  static Future<void> openMail() => openUrl("mailto:amtechnovation@gmail.com");

  static Future<void> openMyLocation() => openUrl("https://www.google.com/maps/search/Lucknow,+Uttar+Pradesh,+India");

  static Future<void> openMyPhoneNo() => openUrl("tel:+91-9871192371");

  static Future<void> openWhatsapp() => openUrl("https://wa.me/9871192371");
}
