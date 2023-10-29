import 'package:win32_registry/win32_registry.dart';
import 'package:dark_mode_switcher_flutter/utils/utils.dart';

class RegistryService {
  static void writeToWindowsRegistry({required bool appsLightMode, required bool systemLightMode}) {
    const keyPath = r'SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize';
    final key = Registry.openPath(RegistryHive.currentUser, path: keyPath, desiredAccessRights: AccessRights.allAccess);

    key.createValue(RegistryValue('AppsUseLightTheme', RegistryValueType.int32, Convertor.boolToHex(appsLightMode)));
    key.createValue(
        RegistryValue('SystemUsesLightTheme', RegistryValueType.int32, Convertor.boolToHex(systemLightMode)));

    key.close();
  }
}
