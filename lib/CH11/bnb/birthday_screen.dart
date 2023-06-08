import 'package:flutter/material.dart';

class Birthday extends StatelessWidget {
  const Birthday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Icon(
        Icons.cake,
        size: 120.0,
        color: Colors.purple,
      ),
    ));
  }
}
