import 'package:dark_mode_switcher_flutter/components/action_button.dart';
import 'package:dark_mode_switcher_flutter/services/registry_service.dart';
import 'package:flutter/material.dart';

class MainActionArea extends StatelessWidget {
  const MainActionArea({Key? key}) : super(key: key);

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
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionButton(
              callback: _switchToDarkMode,
              imageName: 'dark_moon.png',
              text: 'Dark',
            ),
            const SizedBox(height: 10),
            ActionButton(
              callback: _switchToLightMode,
              imageName: 'full_moon.png',
              text: 'Light',
            ),
            const SizedBox(height: 10),
            ActionButton(
              callback: _switchToFullLightMode,
              imageName: 'sun1.png',
              text: 'All Light',
            ),
          ],
        ),
      ),
    );
  }
}
