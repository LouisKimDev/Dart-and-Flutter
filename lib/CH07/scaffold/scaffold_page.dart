import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyScaffoldPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
        actions: [
          IconButton(
              onPressed: () => print('Add Icon Button Pressed'),
              icon: const Icon(
                Icons.add
              )
          )
        ],
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('body', style: TextStyle(
              fontSize: 50
            ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      print('Icon One is pressed');
                    },
                    icon: Icon(Icons.add)),
                Text('Item One')
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      print('Icon two is pressed');
                    },
                    icon: Icon(Icons.add)),
                Text('Item Two')
              ],
            ),
            ListTile(
              leading: IconButton(
                  onPressed: (){
                    print('Icon three is pressed');
                  },
                  icon: Icon(Icons.add)),
              trailing: Text('Item three'),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        color: Colors.amberAccent,
        child: Row(
          children: [
            IconButton(
                onPressed: (){
                  print('Bottom sheet icon is pressed');
                },
                icon: Icon(Icons.add)),
            Text('Botoom Sheet')
          ],
        ),
      ),
      persistentFooterButtons: [
        IconButton(
            onPressed: (){
              print('Persistent footer is pressed');
            },
            icon: Icon(Icons.add)),
        Text('Persistent footer')
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('FAB is pressed');
        },
        child: Icon(Icons.add),
        tooltip: "Increment",
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          print('Item $index is pressed');
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home Item'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Email Item'
          ),
        ],
      ),
    );
  }
}