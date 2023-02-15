import 'package:flutter/material.dart';

import './main_routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'YO_3',
      theme: ThemeData(
        primaryColor: const Color(0xffecae52),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 32,
            fontWeight: FontWeight.w500,
            height: 1.4,
            color: Color(0xff262A2F),
          ),
          titleSmall: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 26,
            fontWeight: FontWeight.w500,
            height: 1.4,
            color: Color(0xff262A2F),
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            height: 1.6,
            color: Color(0xff262A2F),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
