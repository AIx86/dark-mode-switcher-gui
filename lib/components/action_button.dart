import 'package:dark_mode_switcher_flutter/settings.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const ActionButton({super.key, required this.callback, required this.text});

  @override
  Widget build(BuildContext context) {
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
      child: Text(
        text,
        style: const TextStyle(letterSpacing: Settings.letterSpacing),
      ),
    );
  }
}
