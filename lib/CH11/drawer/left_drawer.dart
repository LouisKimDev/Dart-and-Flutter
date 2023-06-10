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
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountName: Text('Sandy Smith'),
            accountEmail: Text('sandy.smith@domainname.com'),
            otherAccountsPictures: [
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/hometopmountain.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const MenuListTileWidget(),
        ],
      ),
    );
  }
}