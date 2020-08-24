import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
                child: Text(
              "Line 1",
              style: TextStyle(),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Line 2",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("Line 3"),
            ),
            FlatButton(
                onPressed: () {
                  print("Button Pressed!");
                  setState(() {

                  });
                },
                child: Text('Click'),
                color: Colors.purple)
          ],
        ),
      ),
    );
  }
}
