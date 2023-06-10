import 'forms_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(FontApp());

class FontApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Font App',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen
        ),
        home: FontWidgetPage()
    );
  }
}