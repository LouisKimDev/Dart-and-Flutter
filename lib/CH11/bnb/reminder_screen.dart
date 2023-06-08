import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Icon(
        Icons.access_alarm,
        size: 120.0,
        color: Colors.orange,
      ),
    ));
  }
}
