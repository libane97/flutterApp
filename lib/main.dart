import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HomePage()),
  );
}

class HomePage extends StatelessWidget {
  final euroListe = [
     'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec',
     'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec',
     'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("MyAppMakeFluttertest")),
      body: ListView.builder(
        itemCount: euroListe.length,
        itemBuilder: (context, index){
          return ListTile(
             title: Text(euroListe[index]),
             leading: CircleAvatar(backgroundColor: Colors.yellow.shade700),
          );
        }
        
        ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white ,)
      ),
    );
  }
}
