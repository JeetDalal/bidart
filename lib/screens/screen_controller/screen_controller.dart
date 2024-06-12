import 'package:art_bid/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar.dart';

class MainScreenController extends StatefulWidget {
  const MainScreenController({super.key});

  @override
  State<MainScreenController> createState() => _MainScreenControllerState();
}

class _MainScreenControllerState extends State<MainScreenController> {
  List<Widget> _pages = [HomeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: PageView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return _pages[index];
        },
      ),
    );
  }
}
