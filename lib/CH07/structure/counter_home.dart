import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // state가 바뀔때 업데이트 됨
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Missing concrete implementation of 'State.build'.
  // Try implementing the missing method, or make the class abstract.
  // 위 오류로 인해 붙여넣은 bulid method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 100,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
