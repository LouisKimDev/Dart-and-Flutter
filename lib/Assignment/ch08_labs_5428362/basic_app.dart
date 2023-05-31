import 'package:flutter/material.dart';
import 'basic_page.dart';

main() => runApp(BasicApp());

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter app",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: BasicPage(),
    );
  }
}
