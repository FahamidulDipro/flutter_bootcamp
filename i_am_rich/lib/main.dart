import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
          appBar: AppBar(
            title: Text("I am so Successful"),
            backgroundColor: Colors.deepPurpleAccent,
          ),
        body: Center(
          child: Image(
            image: AssetImage('images/fid.jpeg'),
          ),
        ),
      ),
    ),
  );
}
