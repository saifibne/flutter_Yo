import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TriviaStartScreen extends StatelessWidget {
  const TriviaStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfffaf6f1),
                  Color.fromRGBO(250, 246, 241, 0.1),
                ],
                stops: [0, 100],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.fromLTRB(25, 60, 25, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/Logo small.jpg',
                          height: 60,
                        ),
                      ),
                    ),
                    Text(
                      'Trivia Challenge',
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(7, 10),
                          color: Color.fromRGBO(0, 0, 0, 0.01),
                          blurRadius: 20),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  child: const Text(
                    '09 : 47',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
