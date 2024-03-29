import 'package:flutter/material.dart';
import 'scaffold_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      debugShowCheckedModeBanner: false,
      home: MyScaffoldPage(),
    );
  }
}
