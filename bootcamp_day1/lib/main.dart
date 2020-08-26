import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String name = "BootCamp";
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
              name,
              style: TextStyle(fontSize: 50, color: Colors.purple),
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
                  setState(() {
                    name = "FID!";
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
