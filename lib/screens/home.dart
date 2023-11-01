import 'package:dark_mode_switcher_flutter/components/header.dart';
import 'package:dark_mode_switcher_flutter/components/main_action_area.dart';
import 'package:flutter/material.dart';

import '../components/footer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 350,
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
