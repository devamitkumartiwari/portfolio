import 'package:devamitkumartiwari/core/responsive.dart';
import 'package:devamitkumartiwari/views/projects_section.dart';
import 'package:devamitkumartiwari/views/service_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/project.dart';
import '../providers/theme_provider.dart';
import 'about_section.dart';
import 'contact_section.dart';
import 'home_section.dart';

class PortfolioPage extends ConsumerStatefulWidget {
  const PortfolioPage({super.key});

  @override
  ConsumerState<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends ConsumerState<PortfolioPage> {
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  int _selectedIndex = 0;
  bool _showScrollToTop = false;

  // Cached — avoids allocating a new list on every build() call
  late final List<ProjectModel> _projects;
  late final List<GlobalKey> _sectionKeys;

  @override
  void initState() {
    super.initState();
    _projects = ProjectModel.projects.take(4).toList();
    _sectionKeys = [homeKey, aboutKey, servicesKey, projectsKey, contactKey];

    _scrollController.addListener(() {
      // FAB visibility
      final showFab = _scrollController.offset > 300;
      if (showFab != _showScrollToTop) {
        setState(() => _showScrollToTop = showFab);
      }
      // Scroll-aware nav highlight
      _updateNavFromScroll();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _updateNavFromScroll() {
    for (int i = _sectionKeys.length - 1; i >= 0; i--) {
      final ctx = _sectionKeys[i].currentContext;
      if (ctx == null) continue;
      final box = ctx.findRenderObject() as RenderBox?;
      if (box == null) continue;
      final dy = box.localToGlobal(Offset.zero).dy;
      if (dy <= 150) {
        if (_selectedIndex != i) setState(() => _selectedIndex = i);
        break;
      }
    }
  }

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _onNavItemTapped(int index) {
    setState(() => _selectedIndex = index);
    switch (index) {
      case 0:
        _scrollToSection(homeKey);
      case 1:
        _scrollToSection(aboutKey);
      case 2:
        _scrollToSection(servicesKey);
      case 3:
        _scrollToSection(projectsKey);
      case 4:
        _scrollToSection(contactKey);
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildScrollContent() {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          HomeSection(key: homeKey),
          AboutSection(key: aboutKey),
          ServicesSection(key: servicesKey),
          ProjectsSection(key: projectsKey, projects: _projects),
          ContactSection(key: contactKey),
        ],
      ),
    );
  }

  Widget _buildNavigationRail(BuildContext context, ScreenSize size) {
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider).valueOrNull ?? ThemeMode.light;
    final scheme = Theme.of(context).colorScheme;
    final isDesktop = size == ScreenSize.desktop;
    final labelType = isDesktop
        ? NavigationRailLabelType.all
        : NavigationRailLabelType.none;

    return Container(
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        border: Border(
          right: BorderSide(color: scheme.outlineVariant, width: 1),
        ),
      ),
      child: NavigationRail(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onNavItemTapped,
        labelType: labelType,
        // Avatar + name at top of rail
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 8),
          child: Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [scheme.primary, scheme.tertiary],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'AK',
                    style: TextStyle(
                      color: scheme.onPrimary,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              if (isDesktop) ...[
                const SizedBox(height: 6),
                Text(
                  'Amit',
                  style: TextStyle(
                    color: scheme.onSurfaceVariant,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ],
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: IconButton(
            icon: Icon(
              themeMode == ThemeMode.light
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined,
            ),
            color: scheme.onSurfaceVariant,
            onPressed: themeNotifier.toggleTheme,
            tooltip: 'Toggle theme',
          ),
        ),
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.home_outlined),
            label: Text('Home'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.person_outline),
            label: Text('About'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.horizontal_split_outlined),
            label: Text('Services'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.work_outline),
            label: Text('Projects'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.contact_phone_outlined),
            label: Text('Contact'),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav(BuildContext context) {
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider).valueOrNull ?? ThemeMode.light;

    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'About',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.horizontal_split_outlined),
          label: 'Services',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.work_outline),
          label: 'Projects',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.contact_phone_outlined),
          label: 'Contact',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            themeMode == ThemeMode.light
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined,
          ),
          label: 'Theme',
        ),
      ],
      onTap: (index) {
        if (index == 5) {
          themeNotifier.toggleTheme();
        } else {
          _onNavItemTapped(index);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;
    final isMobile = context.isMobile;
    final isDesktop = context.isDesktop;

    Widget scrollContent = _buildScrollContent();

    if (isDesktop) {
      scrollContent = Center(
        child: ConstrainedBox(
          constraints:
              const BoxConstraints(maxWidth: Breakpoints.maxContentWidth),
          child: scrollContent,
        ),
      );
    }

    return Scaffold(
      floatingActionButton: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: _showScrollToTop
            ? FloatingActionButton.small(
                key: const ValueKey('fab'),
                onPressed: _scrollToTop,
                tooltip: 'Scroll to top',
                child: const Icon(Icons.arrow_upward),
              )
            : const SizedBox.shrink(key: ValueKey('fab-hidden')),
      ),
      bottomNavigationBar: isMobile ? _buildBottomNav(context) : null,
      body: FocusTraversalGroup(
        child: Row(
          children: [
            if (!isMobile)
              FocusTraversalGroup(
                child: _buildNavigationRail(context, size),
              ),
            Expanded(
              child: FocusTraversalGroup(child: scrollContent),
            ),
          ],
        ),
      ),
    );
  }
}
