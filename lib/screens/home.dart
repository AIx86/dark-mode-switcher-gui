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
              OutlinedButton(
                onPressed: _switchToDarkMode,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                child: const Text('🌑 Dark'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: _switchToLightMode,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                child: const Text('☀ Light'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: _switchToFullLightMode,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                child: const Text('🔆 All Light'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
