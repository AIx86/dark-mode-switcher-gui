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
          SizedBox(
            height: 108,
            // padding: const EdgeInsets.only(bottom: 8),
            child: Image.asset('assets/images/logo.png', width: 70, height: 70),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'Dark Mode Switcher',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: Settings.letterSpacing,
                height: Settings.lineHeight,
              ),
              // textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
