import 'package:go_router/go_router.dart';

import '../../pages/home/home.dart';
import '../../pages/privacy_policy/privacy_policy.dart';
import '../../pages/terms_conditions/terms_conditions.dart';
import '../../pages/works/works.dart';

class Routes {
  static const String initial = "/";
  static const String demos = "demos";
  static const String myWorks = "works";
  static const String privacyPolicy = "privacy-policy";
  static const String termsConditions = "terms-conditions";
}

class RouterGenerator {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.initial,
        builder: (context, state) => const Home(),
        routes: [
          GoRoute(
            path: Routes.myWorks,
            name: Routes.myWorks,
            builder: (context, state) => const MyWorksScreen(),
          ),
          GoRoute(
            path: Routes.privacyPolicy,
            name: Routes.privacyPolicy,
            builder: (context, state) => const PrivacyPolicyScreen(),
          ),
          GoRoute(
            path: Routes.termsConditions,
            name: Routes.termsConditions,
            builder: (context, state) => const TermsConditionsScreen(),
          ),
        ],
      ),
    ],
  );
}
