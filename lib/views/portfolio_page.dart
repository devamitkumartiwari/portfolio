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
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();

  int selectedIndex = 0;

  final sections = ['home', 'about', 'services',  'projects', 'contact'];

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void onNavItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    switch (sections[index]) {
      case 'home':
        scrollToSection(homeKey);
        break;
      case 'about':
        scrollToSection(aboutKey);
        break;
      case 'projects':
        scrollToSection(projectsKey);
        break;
      case 'contact':
        scrollToSection(contactKey);
        break;
      case 'services':
        scrollToSection(servicesKey);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width >= 600;
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      body: Row(
        children: [
          if (isWideScreen)
            NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected: onNavItemTapped,
              labelType: NavigationRailLabelType.all,
              trailing: IconButton(
                icon: Icon(
                  themeMode == ThemeMode.light
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                ),
                onPressed: () {
                  themeNotifier.toggleTheme();
                },
              ),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  label: SizedBox(),
                  // label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.abc_outlined),
                  label: SizedBox(),
                  // label: Text('About'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.horizontal_split_outlined),
                  label: SizedBox(),
                  // label: Text('Projects'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.work_outline),
                  label: SizedBox(),
                  // label: Text('Projects'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.contact_phone_outlined),
                  label: SizedBox(),
                  // label: Text('Contact'),
                ),
              ],
            ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeSection(key: homeKey),
                  AboutSection(key: aboutKey),
                  ServicesSection(key: servicesKey),
                  ProjectsSection(key: projectsKey, projects:  ProjectModel.projects.take(4).toList(),),
                  ContactSection(key: contactKey),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: !isWideScreen
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined),
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
                } else if (index > 5) {
                  onNavItemTapped(index - 1);
                } else {
                  onNavItemTapped(index);
                }
              },
            )
          : null,
    );
  }
}
