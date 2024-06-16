import 'package:art_bid/screens/screen_controller/screen_controller.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

int selectedIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
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
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
    setState(() {
      selectedIndex = index;
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
          icon: Icon(selectedIndex == 0 ? Icons.home : Icons.home_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(selectedIndex == 1 ? Icons.search : Icons.search_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(selectedIndex == 2
              ? Icons.notifications
              : Icons.notifications_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(selectedIndex == 3 ? Icons.person : Icons.person_outline),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
