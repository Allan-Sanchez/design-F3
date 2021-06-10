import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Graphic'),
        BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'Themes')
      ],
    );
  }
}
