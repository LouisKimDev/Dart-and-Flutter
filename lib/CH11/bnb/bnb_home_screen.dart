import 'package:flutter/material.dart';
import 'birthday_screen.dart';
import 'gratitude_screen.dart';
import 'reminder_screen.dart';

class BNBHomeScreen extends StatefulWidget {
  const BNBHomeScreen({super.key});

  @override
  State<BNBHomeScreen> createState() => _BNBHomeScreenState();
}

class _BNBHomeScreenState extends State<BNBHomeScreen> {
  Widget? _currentScreen;
  int? _currentIndex = 0;
  List _listPages = [];

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentScreen = _listPages[selectedIndex];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listPages
      ..add(Birthday())
      ..add(Gratitude())
      ..add(Reminder());
    _currentScreen = Birthday();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BNB"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _currentScreen,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex!,
        onTap: (selectedIndex) => _changePage(selectedIndex),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'birthday',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: 'Gratitude',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Reminders',
          ),
        ],
      ),
    );
  }
}
