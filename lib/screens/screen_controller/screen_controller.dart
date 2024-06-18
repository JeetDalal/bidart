import 'package:art_bid/screens/home_screen/home_screen.dart';
import 'package:art_bid/screens/inbox_screen/inbox_screen.dart';
import 'package:art_bid/screens/profile_screen/profile_screen.dart';
import 'package:art_bid/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar.dart';

class MainScreenController extends StatefulWidget {
  MainScreenController({super.key});

  @override
  State<MainScreenController> createState() => _MainScreenControllerState();
}

PageController pageController = PageController();

class _MainScreenControllerState extends State<MainScreenController> {
  List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    InboxScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        controller: pageController,
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _pages[index];
        },
      ),
    );
  }
}
