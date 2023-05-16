import 'package:flutter/material.dart';
import 'scaffold_page.dart';

void main(List<String> args) {
  runApp(MyScaffoldApp());
}

class MyScaffoldApp extends StatelessWidget {
  const MyScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scaffold",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyScaffoldPage(),
    );
  }
}
