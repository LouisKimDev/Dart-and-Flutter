import 'package:flutter/material.dart';
import 'left_drawer.dart';

class ComplexHome extends StatelessWidget {
  const ComplexHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Drawer Page'
          ),
        ),
      ),
      drawer: LeftDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
