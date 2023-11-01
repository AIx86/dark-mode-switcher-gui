import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              launchUrl(Uri.https('github.com', '/AIx86/dark-mode-switcher-gui'));
            },
            child: Image.asset('assets/images/github-logo.png', width: 20, height: 20),
          ),
        ],
      ),
    );
  }
}
