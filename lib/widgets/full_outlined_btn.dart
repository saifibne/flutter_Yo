import 'package:flutter/material.dart';

class FullOutlinedButton extends StatelessWidget {
  final String buttonText;

  const FullOutlinedButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 20,
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        side: const BorderSide(
          width: 2.0,
          color: Color(0xffd3d3d3),
        ),
      ),
    );
  }
}
