import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String data;
  SecondScreen({
    this.data,
  });
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        height: 100,
        color: Colors.redAccent,
        child: FlatButton(
          onPressed: () {},
          child: Text(
            widget.data,
            style: TextStyle(fontSize: 30),
          ),
        ),
      )),
    );
  }
}
