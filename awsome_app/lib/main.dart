import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Greatest App of all time',
          style: TextStyle(
            fontFamily: 'ConcertOne',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: IconButton(
          onPressed: (){
            print("Hey! Just Pressed!");
            },
          icon: Icon(Icons.gamepad),
          iconSize: 100,
          color:Colors.blueAccent,
        ),
//        Icon(
//          Icons.camera,
//          color:Colors.greenAccent,
//          size: 100,
//        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Center(
          child: Text(
            'Click',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'ConcertOne',
            ),
          ),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}
