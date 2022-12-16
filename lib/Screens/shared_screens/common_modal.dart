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
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Wrap(
          // Using wrap and isScrollControlled to make the modal's height dynamic...
          children: [
            Stack(
              children: [
                Positioned(
                  left: (MediaQuery.of(context).size.width / 2) - 50,
                  child: Container(
                    width: 100,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                  margin: const EdgeInsets.fromLTRB(15, 17, 15, 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: image,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          modalTitle,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          modalText,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.black38),
                        ),
                      ),
                      ...buttons.map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: e,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
