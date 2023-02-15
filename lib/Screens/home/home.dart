import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Working'),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black12, width: 1),
            ),
            color: Colors.white),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Group.png'),
              label: 'My Test',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/task-square.png'),
              label: 'Yo Results',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/note-2.png'),
              label: 'Education',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/map.png',
                color: Colors.black,
              ),
              label: 'Experts',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/setting-2.png',
                color: Colors.black,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
