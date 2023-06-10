import 'package:flutter/material.dart';
import 'navi_home.dart';

void main() => runApp(NavigatorApp());

class NavigatorApp extends StatelessWidget {
  const NavigatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        useInheritedMediaQuery: true,
        home: NavigatorHomeScreen());
  }
}
