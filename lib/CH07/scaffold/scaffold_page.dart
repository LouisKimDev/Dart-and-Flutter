import 'package:flutter/material.dart';

class MyScaffoldPage extends StatelessWidget {
  const MyScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("AppBar"),
          actions: [
            IconButton(
                onPressed: () {
                  print("Add button pressed");
                },
                icon: Icon(Icons.add))
          ]),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "body",
            style: TextStyle(fontSize: 30),
          )
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      print("Drawer Item 1 Pressed");
                    },
                    icon: Icon(Icons.add))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      print("Drawer Item 2 Pressed");
                    },
                    icon: Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
      endDrawer: Drawer(),
      bottomSheet: Container(
          color: Colors.amberAccent,
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    print("Bottom Sheet Icon Pressed");
                  },
                  icon: Icon(Icons.update)),
              Text("Bottom Sheet Text")
            ],
          )),
      persistentFooterButtons: <Widget>[
        IconButton(
          onPressed: () {
            print("Persistant Footer Icon Pressed");
          },
          icon: Icon(Icons.update),
        ),
        Text("Persistant Footer Text")
      ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => debugPrint("Bottom Navigation Bar onTap: $index"),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "BNB 1"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "BNB 1"),
        ],
      ),
    );
  }
}
