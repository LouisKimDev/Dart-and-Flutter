import 'package:flutter/material.dart';
import 'text_button.dart';
import 'counter_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          canvasColor: Colors.amber,
          platform: TargetPlatform.linux),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
