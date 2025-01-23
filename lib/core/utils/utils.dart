import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  static Future<void> openMail() => openUrl("mailto:tiwariamitkumar1415@gmail.com");

  static Future<void> openMyLocation() => openUrl("https://www.google.com/maps/place/Sector+15,+Noida,+Uttar+Pradesh/@28.5824871,77.3046194,15z/data=!4m6!3m5!1s0x390ce45e3eccb8a7:0xd5eb60e62b19e6ba!8m2!3d28.5820607!4d77.3109035!16s%2Fg%2F1tgn_595?entry=ttu&g_ep=EgoyMDI1MDEyMC4wIKXMDSoASAFQAw%3D%3D");

  static Future<void> openMyPhoneNo() => openUrl("tel:+91-9871192371");

  static Future<void> openWhatsapp() => openUrl("https://wa.me/9871192371");
}
