import 'package:dark_mode_switcher_flutter/settings.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 108,
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
              '🌓',
              style: TextStyle(
                fontSize: 70,
                letterSpacing: Settings.letterSpacing,
              ),
            ),
          ),
          Container(
            height: 108,
            alignment: Alignment.center,
            child: const Text(
              'Dark Mode Switcher',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: Settings.letterSpacing),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
