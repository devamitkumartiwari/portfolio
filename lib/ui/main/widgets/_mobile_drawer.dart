part of '../main_section.dart';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer();

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();
    final scrollCubit = context.read<ScrollCubit>();

    return Drawer(
      child: Material(
        color: themeCubit.state.themeMode == ThemeMode.dark
            ? Colors.grey[900]
            : Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: NavBarLogo(),
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Icons.light_mode,
                  color: AppTheme.currentTheme!.primary!,
                ),
                title: const Text(
                  "Dark Mode",
                ),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  value: themeCubit.state.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    themeCubit
                        .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                  },
                  activeColor: AppTheme.currentTheme!.primary,
                ),
              ),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor:
                            AppTheme.currentTheme!.primary!.withAlpha(70),
                        onPressed: () {
                          scrollCubit.scrollMobile(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: AppTheme.currentTheme!.primary,
                          ),
                          title: Text(
                            e.value,
                            style: AppText.l1,
                          ),
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: AppTheme.currentTheme!.primary!.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: AppTheme.currentTheme!.primary!)),
                  onPressed: () => openURL(StaticUtils.resume),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      'RESUME',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
