import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/l10n/app_strings.dart';
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
    final s            = ref.watch(stringsProvider);
    final isDark       = ref.watch(themeProvider).isDarkMode;
    final currentLocale = ref.watch(localeProvider);
    final items        = HeaderRow.headerItems(s);
    final textColor    = isDark ? kDarkText : kLightText;
    final secColor     = isDark ? kDarkTextSec : kLightTextSec;
    final borderColor  = isDark ? kDarkBorder : kLightBorder;
    final drawerBg     = isDark ? kDarkSurface : kLightSurface;

    return ThemeSwitchingArea(
      child: Scaffold(
        key: Globals.scaffoldKey,
        endDrawer: Drawer(
          backgroundColor: drawerBg,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Drawer header ──────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 12, 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Amit',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.5,
                              color: textColor,
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: kAccent,
                            ),
                          ),
                        ]),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Globals.scaffoldKey.currentState?.closeEndDrawer(),
                        child: Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: borderColor),
                          ),
                          child: Icon(Icons.close_rounded,
                              size: 17, color: secColor),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: borderColor, height: 1),

                // ── Theme toggle ───────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 18, 20, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            isDark
                                ? Icons.dark_mode_rounded
                                : Icons.light_mode_rounded,
                            size: 18,
                            color: kAccent,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            isDark ? 'Dark Mode' : 'Light Mode',
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                      CustomSwitch(
                        value: isDark,
                        onChanged: (val) =>
                            ref.read(themeProvider).changeTheme(val),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // ── Language picker ────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'LANGUAGE',
                    style: GoogleFonts.outfit(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                      color: kAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: supportedLanguages.map((l) {
                      final isSelected = currentLocale.languageCode ==
                          l.locale.languageCode;
                      return GestureDetector(
                        onTap: () => ref
                            .read(localeProvider.notifier)
                            .state = l.locale,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? kAccent.withValues(alpha: 0.12)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: isSelected
                                  ? kAccent.withValues(alpha: 0.50)
                                  : borderColor,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(l.flag,
                                  style: const TextStyle(fontSize: 14)),
                              const SizedBox(width: 6),
                              Text(
                                l.nativeName,
                                style: GoogleFonts.outfit(
                                  fontSize: 12,
                                  fontWeight: isSelected
                                      ? FontWeight.w700
                                      : FontWeight.w500,
                                  color: isSelected ? kAccent : textColor,
                                ),
                              ),
                              if (isSelected) ...[
                                const SizedBox(width: 5),
                                const Icon(Icons.check_rounded,
                                    size: 13, color: kAccent),
                              ],
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 16),
                Divider(color: borderColor, height: 1),

                // ── Nav items ──────────────────────────────────────────────
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 8),
                    itemBuilder: (ctx, index) {
                      final item = items[index];
                      return ListTile(
                        onTap: () {
                          if (Globals.scaffoldKey.currentState
                                  ?.isEndDrawerOpen ==
                              true) {
                            Navigator.pop(ctx);
                            _homeProvider.scrollBasedOnHeader(item);
                          }
                        },
                        leading: Icon(item.iconData as IconData?,
                            size: 20, color: secColor),
                        title: Text(
                          item.title,
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hoverColor: kAccent.withValues(alpha: 0.06),
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(height: 2),
                    itemCount: items.length,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: _buildPage(),
      ),
    );
  }
}
