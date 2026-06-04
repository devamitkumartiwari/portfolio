import 'package:go_router/go_router.dart';

import '../../pages/home/home.dart';
import '../../pages/works/works.dart';

class Routes {
  static const String initial = "/";
  static const String demos = "demos";
  static const String myWorks = "works";
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
        ],
      ),
    ],
  );
}
