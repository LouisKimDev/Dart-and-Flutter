import 'package:flutter/material.dart';

class MyScaffoldPage extends StatelessWidget {
  const MyScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Colors.lightBlue.shade200,
        title: Text("Scaffold"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.lightBlue.shade100,
              child: Text(
                'body',
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.amber,
              title: Text(
                'Articles',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            TextListTile("This is my first article."),
            Divider(),
            TextListTile("This is my second article."),
            Divider(),
            TextListTile("This is my third article."),
            Divider(),
            TextListTile("This is my forth article."),
            Divider(),
            TextListTile("This is my fifth article."),
            Divider(),
            TextListTile("This is my sixth article."),
            Divider(),
            TextListTile("This is my seventh article."),
            Divider(),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.amber.shade200,
          boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 0,
              blurRadius: 5.0,
              offset: Offset(0, 5)
            )
          ]
        ),
          height: 200,
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "BottomSheet",
                style: TextStyle(fontSize: 30),
              )
            ],
          )
          ),
      floatingActionButton: FloatingActionButton.large(
        child: Text(
          'Refresh',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade100,
            boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 0,
              blurRadius: 5.0,
              offset: Offset(0, 5)
            )
          ]),
          width: 60,
          height: 40,
          child: IconButton(
            color: Colors.white,
            onPressed: () {
              print("Persistant Footer Icon Pressed");
            },
            icon: Icon(Icons.add),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.redAccent.shade100,
            boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 0,
              blurRadius: 5.0,
              offset: Offset(0, 5)
            )
          ]),
          width: 60,
          height: 40,
          child: IconButton(
            color: Colors.white,
            onPressed: () {
              print("Persistant Footer Icon Pressed");
            },
            icon: Icon(Icons.close),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade200,
            boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 0,
              blurRadius: 5.0,
              offset: Offset(0, 5)
            )
          ]),
          width: 60,
          height: 40,
          child: IconButton(
            color: Colors.white,
            onPressed: () {
              print("Persistant Footer Icon Pressed");
            },
            icon: Icon(Icons.arrow_right),
          ),
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => debugPrint("Bottom Navigation Bar onTap: $index"),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: "Honme"),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt, size: 40), label: "Capture"),
        ],
      ),
    );
  }

  ListTile TextListTile(String text) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
