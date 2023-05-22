import 'package:flutter/material.dart';
import 'orient_page.dart';

void main() => runApp(ListApp());

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: OrientationHomePage(),
    );
  }
}
