import 'package:flutter/material.dart';

class SliderContext extends StatelessWidget {
  final String title;
  final dynamic image;

  const SliderContext({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            flex: 1,
            child: image is String
                ? Image.asset('assets/images/l012e_4_e03 1.jpg')
                : image,
          ),
        ],
      ),
    );
    ;
  }
}
