import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/l10n/locale_provider.dart';
import '../../core/routes/routes.dart';
import '../../core/utils/constants.dart';
import '../../core/utils/globals.dart';
import '../../core/utils/screen_helper.dart';
import '../../models/project.dart';
import '../../provider/home.dart';
import '../../provider/theme.dart';
import '../../widgets/switch.dart';
import 'components/about.dart';
import 'components/carousel.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/portfolio_stats.dart';
import 'components/project.dart';
import 'components/service.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late HomeProvider _homeProvider;

  @override
  void initState() {
    _homeProvider = ref.read(homeProvider);
    super.initState();
  }

  Widget _buildPage() {
    final isDark    = ref.watch(themeProvider).isDarkMode;
    final textColor = isDark ? kDarkText : kLightText;
    final s         = ref.watch(stringsProvider);

    return Stack(
      children: [
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kHeaderHeight),
                Carousel(key: _homeProvider.homeKey),
                AboutSection(key: _homeProvider.aboutKey),
                ServiceSection(key: _homeProvider.servicesKey),

                // Projects heading
                SizedBox(key: _homeProvider.portfolioKey, height: 16),
                PageWrapper(
                  extraPadding: EdgeInsets.symmetric(
                    horizontal: ScreenHelper.isMobile(context) ? 24 : 40,
                    vertical: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            s.projectsLabel,
                            style: GoogleFonts.outfit(
                              color: kAccent, fontSize: 12,
                              fontWeight: FontWeight.w700, letterSpacing: 2.5,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            s.projectsHeading,
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenHelper.isMobile(context) ? 28 : 36,
                              height: 1.2, color: textColor, letterSpacing: -0.8,
                            ),
                          ),
                        ],
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => context.goNamed(Routes.myWorks),
                          child: Row(
                            children: [
                              Text(
                                s.ctaViewAll,
                                style: GoogleFonts.outfit(
                                  color: kAccent, fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Icon(Icons.arrow_forward_rounded,
                                  color: kAccent, size: 16),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                ProjectSection(
                  projects: ProjectModel.projects.take(4).toList(),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: PortfolioStats(),
                ),

                Footer(key: _homeProvider.contactKey),
              ],
            ),
          ),
        ),
        Header(
          themeSwitch: ThemeSwitcher(
            clipper: const ThemeSwitcherBoxClipper(),
            builder: (context) {
              return CustomSwitch(
                value: ref.watch(themeProvider).isDarkMode,
                onChanged: (val) {
                  ref.read(themeProvider).changeTheme(val);
                  ThemeSwitcher.of(context).changeTheme(
                    theme: ref.read(themeProvider).getCurrentTheme,
                    isReversed: false,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final s     = ref.watch(stringsProvider);
    final items = HeaderRow.headerItems(s);

    return ThemeSwitchingArea(
      child: Scaffold(
        key: Globals.scaffoldKey,
        endDrawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: ListView.separated(
                itemBuilder: (ctx, index) {
                  final item = items[index];
                  return ListTile(
                    onTap: () {
                      if (Globals.scaffoldKey.currentState?.isEndDrawerOpen == true) {
                        Navigator.pop(ctx);
                        _homeProvider.scrollBasedOnHeader(item);
                      }
                    },
                    leading: Icon(item.iconData),
                    title: Text(
                      item.title,
                      style: GoogleFonts.outfit(fontWeight: FontWeight.w500),
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemCount: items.length,
              ),
            ),
          ),
        ),
        body: _buildPage(),
      ),
    );
  }
}
