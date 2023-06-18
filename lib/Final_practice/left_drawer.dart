import 'package:flutter/material.dart';
import 'menu_list.dart';

class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Icon(
              Icons.face,
              size: 128.0,
              color: Colors.white54,
            ),
          ),
          const MenuListTileWidget(),
        ],
      ),
    );
  }
}