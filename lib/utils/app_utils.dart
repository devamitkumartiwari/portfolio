import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

void myLaunchUrl(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    debugPrint('Could not launch $url');
  }
}
