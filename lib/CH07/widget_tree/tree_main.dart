import 'package:flutter/material.dart';
import 'tree_home.dart';

void main() => runApp(WidgetTreeApp());

class WidgetTreeApp extends StatelessWidget {
  const WidgetTreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fultter widget tree',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WidgetTreePage());
  }
}
