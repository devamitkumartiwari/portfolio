import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/ThemeCubit.dart';
import 'package:url_strategy/url_strategy.dart';
import 'bloc/DrawerCubit.dart';
import 'bloc/ScrollCubit.dart';
import 'bloc/ThemeState.dart';
import 'utils/export.dart';
import 'package:portfolio/configs/core_theme.dart' as theme;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                ThemeCubit()..init()), // Initialize theme on app startup
        BlocProvider(create: (_) => DrawerCubit()),
        BlocProvider(create: (_) => ScrollCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => MaterialChild(
          themeMode: state.themeMode, // Pass the theme mode from Cubit
        ),
      ),
    );
  }
}

// class MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AppProvider()),
//         ChangeNotifierProvider(create: (_) => DrawerProvider()),
//         ChangeNotifierProvider(create: (_) => ScrollProvider()),
//       ],
//       child: Consumer<AppProvider>(
//         builder: (context, value, _) => MaterialChild(
//           provider: value,
//         ),
//       ),
//     );
//   }
// }

// class MaterialChild extends StatefulWidget {
//   final AppProvider provider;
//
//   const MaterialChild({super.key, required this.provider});
//
//   @override
//   State<MaterialChild> createState() => _MaterialChildState();
// }

class MaterialChild extends StatefulWidget {
  final ThemeMode themeMode;

  const MaterialChild({super.key, required this.themeMode});

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

// class _MaterialChildState extends State<MaterialChild> {
//   void initAppTheme() {
//     final appProviders = AppProvider.state(context);
//     appProviders.init();
//   }
//
//   @override
//   void initState() {
//     initAppTheme();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Amit Kumar Tiwari Mobile App Developer',
//       theme: theme.themeLight,
//       darkTheme: theme.themeDark,
//       themeMode: widget.provider.themeMode,
//       initialRoute: "/",
//       routes: {
//         "/": (context) => const MainPage(),
//       },
//     );
//   }
// }

class _MaterialChildState extends State<MaterialChild> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amit Kumar Tiwari Mobile App Developer',
      theme: theme.themeLight,
      darkTheme: theme.themeDark,
      themeMode: widget.themeMode, // Use the themeMode provided by the Cubit
      initialRoute: "/",
      routes: {
        "/": (context) => const MainPage(),
      },
    );
  }
}
