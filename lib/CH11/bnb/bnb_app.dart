import 'package:flutter/material.dart';
import 'bnb_home_screen.dart';

void main(List<String> args) {
  void main() => runApp(BNBApp());
}

class BNBApp extends StatelessWidget {
  const BNBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: BNBHomeScreen(),
    );
  }
}
