import 'package:flutter/material.dart';
import 'layout_home.dart';

main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LayoutHomePage(),
    );
  }
}
