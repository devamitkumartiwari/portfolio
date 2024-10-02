part of '../main_section.dart';

class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop();

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();

    return Container(
      padding: Space.all(),
      color: themeCubit.state.themeMode == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      child: SingleChildScrollView(
        child: Row(
          children: [
            const NavBarLogo(),
            Space.xm!,
            ...NavBarUtils.names.asMap().entries.map(
                  (e) => NavBarActionButton(
                    label: e.value,
                    index: e.key,
                  ),
                ),
            EntranceFader(
              offset: const Offset(0, -10),
              delay: const Duration(milliseconds: 100),
              duration: const Duration(milliseconds: 250),
              child: MaterialButton(
                hoverColor: AppTheme.currentTheme!.primary!.withAlpha(150),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                    color: AppTheme.currentTheme!.primary!,
                  ),
                ),
                onPressed: () {
                  html.window.open(
                    StaticUtils.resume,
                    "pdf",
                  );
                },
                child: Padding(
                  padding: Space.all(0.15, 0.45),
                  child: Text(
                    'RESUME',
                    style: AppText.l1b,
                  ),
                ),
              ),
            ),
            Space.x!,
            Switch(
              inactiveTrackColor: Colors.grey,
              value: themeCubit.state.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeCubit.setTheme(
                  value ? ThemeMode.dark : ThemeMode.light,
                );
              },
              activeColor: AppTheme.currentTheme!.primary!,
            ),
            Space.x!,
          ],
        ),
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet();

  @override
  Widget build(BuildContext context) {
    final drawerCubit = context.read<DrawerCubit>();
    // final drawerProvider = Provider.of<DrawerProvider>(context);

    return Padding(
      padding: Space.v!,
      child: Row(
        children: [
          Space.x1!,
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              drawerCubit.state.currentState?.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          Space.xm!,
          const NavBarLogo(),
          Space.x1!,
        ],
      ),
    );
  }
}
