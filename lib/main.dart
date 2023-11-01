import 'dart:io';

import 'package:dark_mode_switcher_flutter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'screens/error_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!Platform.isWindows) {
    return runApp(const MyApp(errorScreen: true));
  }

  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(350, 330),
    minimumSize: Size(350, 330),
    maximumSize: Size(350, 330),
    center: true,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp(errorScreen: false));
}

class MyApp extends StatelessWidget {
  final bool errorScreen;

  const MyApp({super.key, required this.errorScreen});

  @override
  Widget build(BuildContext context) {
    Widget entryScreen = errorScreen ? const ErrorScreen() : const Home();

    return MaterialApp(
      title: 'Dark Mode Switcher',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: entryScreen,
    );
  }
}
