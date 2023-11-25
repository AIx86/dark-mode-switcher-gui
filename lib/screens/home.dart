import 'package:dark_mode_switcher_flutter/components/footer.dart';
import 'package:dark_mode_switcher_flutter/components/header.dart';
import 'package:dark_mode_switcher_flutter/components/main_action_area.dart';
import 'package:dark_mode_switcher_flutter/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: Settings.windowWidth,
          child: Column(
            children: [
              Header(),
              Expanded(
                child: MainActionArea(),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
