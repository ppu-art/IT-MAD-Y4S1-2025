import 'package:flutter/material.dart';
import 'package:mad/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  List<Widget> listScreen = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen.elementAt(_currentIndex),
      bottomNavigationBar: _bottomNavBar,
    );
  }

  Widget get _bottomNavBar {

    final bottomNavBarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Faculty'),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'News'),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'More'),
    ];

    return BottomNavigationBar(
        currentIndex: _currentIndex,
        items: bottomNavBarItems,
        fixedColor: Colors.blueAccent,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
    );

  }
}
