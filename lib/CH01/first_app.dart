import 'package:flutter/material.dart';

//test
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      theme: ThemeData(primaryColor: Colors.green),
      home: Center(
        child: Text("Hello Dart World"),
      ),
    );
  }
}
