import 'package:flutter/material.dart';
import 'package:simple_material3/bottom_navbar/home_screen.dart';
import 'package:simple_material3/bottom_navbar/profil_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static const List<Widget> menuNavBar = [
    NavigationDestination(
      tooltip: '',
      icon: Icon(Icons.home_outlined),
      label: 'Home',
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      tooltip: '',
      icon: Icon(Icons.account_circle_outlined),
      label: 'Profil',
      selectedIcon: Icon(Icons.account_circle),
    )
  ];
  static const List<Widget> listPage = [HomeScreen(), ProfilScreen()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: menuNavBar
      ),
    );
  }
}
