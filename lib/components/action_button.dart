import 'package:dark_mode_switcher_flutter/settings.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String imageName;
  final String text;
  final VoidCallback callback;

  const ActionButton({super.key, required this.callback, required this.imageName, required this.text});

  @override
  Widget build(BuildContext context) {
    var imagePath = 'assets/images/';

    return OutlinedButton(
      onPressed: callback,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath + imageName, width: 20, height: 20),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(letterSpacing: Settings.letterSpacing, height: Settings.lineHeight),
          ),
        ],
      ),
    );
  }
}
