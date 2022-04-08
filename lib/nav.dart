import 'package:flutter/material.dart';

import './homepage.dart';
import './analytics.dart';
import './settings.dart';


int _navIndex = 0;

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  final List<Widget> _children = [
    HomePage(),
    Analytics(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xff3e7c9e),
        unselectedItemColor: Color(0xffc2c2c2),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (i) {
          setState(() {
            _navIndex = i;
          });
        },
      ),
    );
  }
}
