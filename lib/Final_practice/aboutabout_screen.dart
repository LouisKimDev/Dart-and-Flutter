import 'package:flutter/material.dart';

class AboutAboutScreen extends StatelessWidget {
  const AboutAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('About'
          ),
        ),
      ),
      body: Text('About Page'),
    );
  }
}