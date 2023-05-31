import 'package:flutter/material.dart';
import 'grid_page.dart';

void main() => runApp(GridApp());

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: GridViewHomePage(),
    );
  }
}