import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String title, description;
  SecondScreen({
    this.title,
    this.description,
  });
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 38,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Text(
              widget.description,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
