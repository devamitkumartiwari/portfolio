import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/ScrollCubit.dart';
import 'package:portfolio/bloc/ThemeCubit.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import '../../bloc/DrawerCubit.dart';
import '../../configs/app.dart';
import 'package:portfolio/utils/export.dart';
part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);

    final drawerCubit = context.read<DrawerCubit>();

    return Scaffold(
      key: drawerCubit.drawerKey,
      extendBodyBehindAppBar: true,
      drawer: !ResponsiveApp.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            ResponsiveApp.isTablet(context) || ResponsiveApp.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
