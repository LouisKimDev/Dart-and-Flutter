import 'about_screen.dart';
import 'package:flutter/material.dart';
import '../CH10/forms/forms_home.dart';

class MenuListTileWidget extends StatelessWidget {
  const MenuListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.font_download),
          title: Text('Font'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FontWidgetPage(),
              ),
            );
          },
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Setting'),
          onTap: () {},
        ),
      ],
    );
  }
}
