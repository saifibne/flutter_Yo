import 'package:flutter/material.dart';

class CommonModal {
  final BuildContext context;
  final dynamic image;
  final String modalTitle;
  final String modalText;
  final List<Widget> buttons;

  const CommonModal(
    this.context, {
    required this.image,
    required this.modalTitle,
    required this.modalText,
    required this.buttons,
  });

  void open() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const Text('Hello');
      },
    );
  }
}
