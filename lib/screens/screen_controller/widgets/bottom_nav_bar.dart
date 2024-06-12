import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Home',
  //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //   ),
  //   Text(
  //     'Search',
  //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //   ),
  //   Text(
  //     'Notifications',
  //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //   ),
  //   Text(
  //     'Profile',
  //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //   ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedIconTheme: IconThemeData(color: Colors.black),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:
              Icon(_selectedIndex == 1 ? Icons.search : Icons.search_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex == 2
              ? Icons.notifications
              : Icons.notifications_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(_selectedIndex == 3 ? Icons.person : Icons.person_outline),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
