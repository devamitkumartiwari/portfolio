import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/l10n/app_strings.dart';
import '../../../core/l10n/locale_provider.dart';
import '../../../core/routes/routes.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/globals.dart';
import '../../../core/utils/screen_helper.dart';
import '../../../core/utils/utils.dart';
import '../../../models/header_item.dart';
import '../../../provider/home.dart';
import '../../../provider/theme.dart';

// ── Logo ──────────────────────────────────────────────────────────────────────
class HeaderLogo extends ConsumerStatefulWidget {
  const HeaderLogo({super.key});

  @override
  ConsumerState<HeaderLogo> createState() => _HeaderLogoState();
}

class _HeaderLogoState extends ConsumerState<HeaderLogo> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final s      = ref.watch(stringsProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => context.go(Routes.initial),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 160),
          opacity: _hovered ? 0.80 : 1.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: s.heroRole,
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                    color: isDark ? kDarkText : kLightText,
                  ),
                ),
                TextSpan(
                  text: ' ${s.headerTagline}',
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: kAccent,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Nav row (desktop/tablet) ───────────────────────────────────────────────────
class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key, required this.themeSwitch});
  final Widget themeSwitch;

  static List<NameOnTap> headerItems(AppStrings s) => [
        NameOnTap(
            title: s.navHome,
            iconData: Icons.home_outlined,
            onTap: () {},
            section: NavSection.home),
        NameOnTap(
            title: s.navAbout,
            iconData: Icons.person_outline_rounded,
            onTap: () {},
            section: NavSection.about),
        NameOnTap(
            title: s.navSkills,
            iconData: Icons.code_rounded,
            onTap: () {},
            section: NavSection.skills),
        NameOnTap(
            title: s.navProjects,
            iconData: Icons.work_outline_rounded,
            onTap: () {},
            section: NavSection.projects),
        NameOnTap(
            title: s.navContact,
            iconData: Icons.mail_outline_rounded,
            onTap: () {},
            section: NavSection.contact),
        NameOnTap(
          title: s.navBlog,
          iconData: Icons.article_outlined,
          onTap: () => Utilty.openUrl(AppConstants.mediumUrl),
          section: NavSection.blog,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final isDark = ref.watch(themeProvider).isDarkMode;
      final s = ref.watch(stringsProvider);
      final items = headerItems(s);

      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...items.map((item) => _NavItem(
                item: item,
                isDark: isDark,
                onTap: () {
                  item.onTap();
                  ref.read(homeProvider).scrollBasedOnHeader(item);
                },
              )),
          const SizedBox(width: 10),
          const _LangButton(),
          const SizedBox(width: 8),
          themeSwitch,
        ],
      );
    });
  }
}

// ── Single nav item ───────────────────────────────────────────────────────────
class _NavItem extends StatefulWidget {
  final NameOnTap item;
  final bool isDark;
  final VoidCallback onTap;
  const _NavItem(
      {required this.item, required this.isDark, required this.onTap});

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          margin: const EdgeInsets.only(right: 2),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          decoration: BoxDecoration(
            color:
                _hovered ? kAccent.withValues(alpha: 0.10) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            widget.item.title,
            style: GoogleFonts.outfit(
              color: _hovered
                  ? kAccent
                  : (widget.isDark ? kDarkTextSec : kLightTextSec),
              fontSize: 14,
              fontWeight: _hovered ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

// ── Language picker button ────────────────────────────────────────────────────
class _LangButton extends ConsumerStatefulWidget {
  const _LangButton();

  @override
  ConsumerState<_LangButton> createState() => _LangButtonState();
}

class _LangButtonState extends ConsumerState<_LangButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final current = ref.watch(localeProvider);
    final meta = supportedLanguages.firstWhere(
      (l) => l.locale.languageCode == current.languageCode,
      orElse: () => supportedLanguages.first,
    );
    final border = isDark ? kDarkBorder : kLightBorder;
    final secColor = isDark ? kDarkTextSec : kLightTextSec;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: PopupMenuButton<String>(
        tooltip: '',
        offset: const Offset(0, 42),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        color: isDark ? kDarkCard : kLightSurface,
        onSelected: (code) {
          ref.read(localeProvider.notifier).state = Locale(code);
        },
        itemBuilder: (_) => supportedLanguages.map((l) {
          final isSelected = l.locale.languageCode == current.languageCode;
          return PopupMenuItem<String>(
            value: l.locale.languageCode,
            child: Row(
              children: [
                Text(l.flag, style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    l.nativeName,
                    style: GoogleFonts.outfit(
                      fontSize: 13,
                      fontWeight:
                          isSelected ? FontWeight.w700 : FontWeight.w400,
                      color: isSelected
                          ? kAccent
                          : (isDark ? kDarkText : kLightText),
                    ),
                  ),
                ),
                if (isSelected)
                  const Icon(Icons.check_rounded, size: 14, color: kAccent),
              ],
            ),
          );
        }).toList(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color:
                _hovered ? kAccent.withValues(alpha: 0.10) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _hovered ? kAccent.withValues(alpha: 0.40) : border,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(meta.flag, style: const TextStyle(fontSize: 14)),
              const SizedBox(width: 5),
              Text(
                meta.code,
                style: GoogleFonts.outfit(
                  color: _hovered ? kAccent : secColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(width: 3),
              Icon(Icons.keyboard_arrow_down_rounded,
                  size: 14, color: _hovered ? kAccent : secColor),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Main header (desktop/tablet/mobile) ───────────────────────────────────────
class Header extends StatelessWidget {
  const Header({super.key, required this.themeSwitch});
  final Widget themeSwitch;

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _GlassHeader(themeSwitch: themeSwitch, isMobile: false),
      tablet: _GlassHeader(themeSwitch: themeSwitch, isMobile: false),
      mobile: const _GlassMobileHeader(),
    );
  }
}

class _GlassHeader extends ConsumerWidget {
  final Widget themeSwitch;
  final bool isMobile;
  const _GlassHeader({required this.themeSwitch, required this.isMobile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final bg = isDark ? kDarkBg : kLightBg;
    final border = isDark ? kDarkBorder : kLightBorder;

    return RepaintBoundary(
      child: Container(
        height: kHeaderHeight,
        decoration: BoxDecoration(
          color: bg,
          border: Border(bottom: BorderSide(color: border, width: 1)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.10 : 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: PageWrapper(
          extraPadding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const HeaderLogo(),
              HeaderRow(themeSwitch: themeSwitch),
            ],
          ),
        ),
      ),
    );
  }
}

class _GlassMobileHeader extends ConsumerWidget {
  const _GlassMobileHeader();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).isDarkMode;
    final bg = isDark ? kDarkBg : kLightBg;
    final border = isDark ? kDarkBorder : kLightBorder;
    final iconColor = isDark ? kDarkText : kLightText;

    return RepaintBoundary(
      child: Container(
        height: kHeaderHeight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: bg,
          border: Border(bottom: BorderSide(color: border, width: 1)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.10 : 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeaderLogo(),
            GestureDetector(
              onTap: () => Globals.scaffoldKey.currentState?.openEndDrawer(),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: kAccent.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kAccent.withValues(alpha: 0.25)),
                ),
                child: Icon(Icons.menu_rounded, size: 22, color: iconColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
