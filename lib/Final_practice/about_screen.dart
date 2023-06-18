import 'package:flutter/material.dart';
import 'aboutabout_screen.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AboutAboutScreen(),
      appBar: AppBar(
          actions: [
            Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
            ),
          ],
        ),
    );
  }
}