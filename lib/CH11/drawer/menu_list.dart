import 'package:flutter/material.dart';

class MenuListTileWidget extends StatelessWidget {
  const MenuListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BirthdayScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
