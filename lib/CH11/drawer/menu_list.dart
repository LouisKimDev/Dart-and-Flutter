import 'package:fl_5428362/CH11/navi/gratitude_screen.dart';
import 'package:fl_5428362/CH11/navi/birthday_screen.dart';
import 'package:fl_5428362/CH11/navi/reminder_screen.dart';
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
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text('Gratitude'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GratitudeScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text('Reminders'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReminderScreen(),
              ),
            );
          },
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Setting'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
