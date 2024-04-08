import 'package:flutter/material.dart';
import 'package:simple_get_it/home/home_screen.dart';
import 'package:simple_get_it/injection.dart';

void main() {
  initDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: HomeScreen(),
    );
  }
}
