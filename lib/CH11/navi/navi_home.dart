import 'package:fl_5428362/CH11/navi/about_screen.dart';
import 'package:flutter/material.dart';
import 'gratitude_screen.dart';

class NavigatorHomeScreen extends StatefulWidget {
  const NavigatorHomeScreen({super.key});

  @override
  State<NavigatorHomeScreen> createState() => _NavigatorHomeScreenState();
}

class _NavigatorHomeScreenState extends State<NavigatorHomeScreen> {
  String _howAreYou = '...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
        actions: [
          IconButton(
            onPressed: () => _openAboutScreen(
              context: context,
              fullscreenDialog: true,
            ),
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Grateful for: $_howAreYou',
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openGratefulScreen(context: context),
        tooltip: 'Gratitude',
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }

  // context라는 차일드를 주기 위해 부모가 존재해야 하기 때문에 context에 required가 붙음
  void _openAboutScreen(
      {required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => AboutScreen()),
    );
  }

  void _openGratefulScreen(
      {required BuildContext context, bool fullscreenDialog = false}) async {
    final String _gratitudeResponse = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GratitudeScreen()),
    );
    setState(() {
      _howAreYou = _gratitudeResponse ?? '';
    });
  }
}
