import 'package:flutter/material.dart';
import 'right_drawer.dart';
import 'left_drawer.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
