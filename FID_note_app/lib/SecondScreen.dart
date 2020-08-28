import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String title;
  String description;
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
          title: Text('Write More',style: TextStyle(fontFamily: 'DancingScript'),),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.yellow[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 30,fontFamily: 'DancingScript',fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 8),
                child: Text(
                  widget.description,
                  style: TextStyle(fontSize: 25,fontFamily: 'DancingScript'),
                ),
              ),
            ],
          ),
        ));
  }
}
