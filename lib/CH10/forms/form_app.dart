import 'package:flutter/material.dart';
import 'form_page.dart';

void main() => runApp(FontApp());

class FontApp extends StatelessWidget {
  const FontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: FontHome());
  }
}
