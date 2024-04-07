import 'package:flutter/material.dart';
import 'package:simple_material3/bottom_navbar/bottom_navbar.dart';
import 'package:simple_material3/card/card_screen.dart';
import 'package:simple_material3/navigation_drawer/navigation_drawer_screen.dart';
import 'package:simple_material3/seach/search_screen.dart';
import 'package:simple_material3/tab/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                  onPressed: () => _openPage(context, BottomNavBar()),
                  child: Text("Bottom Navigation Bar")),
              FilledButton(
                  onPressed: () => _openPage(context, NavigationDrawerScreen()),
                  child: Text("Navigation Drawer")),
              FilledButton(
                  onPressed: () => _openPage(context, SearchScreen()),
                  child: Text("Search")),
              FilledButton(
                  onPressed: () => _openPage(context, TabScreen()),
                  child: Text("Tab")),
              FilledButton(
                  onPressed: () => _openPage(context, CardScreen()),
                  child: Text("Card"))
            ],
          ),
        ),
      ),
    );
  }

  _openPage(BuildContext context, Widget widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}
