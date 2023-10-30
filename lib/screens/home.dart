import 'package:dark_mode_switcher_flutter/components/action_button.dart';
import 'package:dark_mode_switcher_flutter/services/registry_service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _switchToDarkMode() {
    RegistryService.writeToWindowsRegistry(appsLightMode: false, systemLightMode: false);
  }

  void _switchToLightMode() {
    RegistryService.writeToWindowsRegistry(appsLightMode: true, systemLightMode: false);
  }

  void _switchToFullLightMode() {
    RegistryService.writeToWindowsRegistry(appsLightMode: true, systemLightMode: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButton(callback: _switchToDarkMode, text: '🌑 Dark'),
              const SizedBox(height: 10),
              ActionButton(callback: _switchToLightMode, text: '☀ Light'),
              const SizedBox(height: 10),
              ActionButton(callback: _switchToFullLightMode, text: '🔆 All Light'),
            ],
          ),
        ),
      ),
    );
  }
}
