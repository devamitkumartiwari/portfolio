import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/utils/constants.dart';
import '../core/utils/utils.dart';
import '../models/header_item.dart';


final homeProvider = ChangeNotifierProvider((ref) => HomeProvider());

class HomeProvider extends ChangeNotifier {
  final contactKey = GlobalKey();
  final portfolioKey = GlobalKey();
  final servicesKey = GlobalKey();
  final aboutKey = GlobalKey();
  final homeKey = GlobalKey();

  Future<void> scrollToContact() async {
    final context = contactKey.currentContext;
    await _scroll(context);
  }

  Future<void> scrollToPortfolio() async {
    final context = portfolioKey.currentContext;
    await _scroll(context);
  }

  Future<void> scrollToService() async {
    final context = servicesKey.currentContext;
    await _scroll(context);
  }

  Future<void> scrollToAbout() async {
    final context = aboutKey.currentContext;
    await _scroll(context);
  }

  Future<void> scrollToHome() async {
    final context = homeKey.currentContext;
    await _scroll(context);
  }

  Future _scroll(BuildContext? context) async {
    if (context != null) {
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
  }

  void scrollBasedOnHeader(NameOnTap nameOnTap) {
    switch (nameOnTap.section) {
      case NavSection.home:     scrollToHome();
      case NavSection.about:    scrollToAbout();
      case NavSection.skills:   scrollToService();
      case NavSection.projects: scrollToPortfolio();
      case NavSection.contact:  scrollToContact();
      case NavSection.blog:     Utilty.openUrl(AppConstants.mediumUrl);
      case NavSection.none:     break;
    }
  }
}
