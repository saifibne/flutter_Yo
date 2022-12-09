import 'package:flutter/material.dart';

class FullElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback callbackFn;

  const FullElevatedButton(
      {Key? key, required this.buttonText, required this.callbackFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callbackFn,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 20,
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
