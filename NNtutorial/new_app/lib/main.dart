import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Great FID app',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: CupertinoColors.systemGreen,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:100.0),
              child: Container(
                color: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: FlatButton(
                  child: Text(
                    'Show Here!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hellow'),
                  Container(
                    color: Colors.purple,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Button',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(8),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Button 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hellow'),
                  Container(
                    color: Colors.purple,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Button',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(8),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Button 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hellow'),
                  Container(
                    color: Colors.purple,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Button',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(8),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Button 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
