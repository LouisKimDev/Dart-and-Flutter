import 'package:flutter/material.dart';
import 'drawer_home.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: DrawerHome(),
    );
  }
}