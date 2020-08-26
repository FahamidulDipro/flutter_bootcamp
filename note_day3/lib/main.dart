import 'package:flutter/material.dart';
import 'package:note_day3/Model/note.dart';
import 'package:note_day3/SecondScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String title;
  String description;
  var listNote = [];
  NoteApp n1 =
      NoteApp(title: "This is a title", description: "Sample Description");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(title);
          print(description);
          NoteApp n1 = NoteApp(
            title: title,
            description: description,
          );
          listNote.add(n1);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
      appBar: AppBar(
        title: Text('Note FID'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'About You',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              onChanged: (val) {
                setState(() {
                  title = val;
                });
                print(val);
              },
              decoration: InputDecoration(
                labelText: "Enter Title",
                hintText: "Name",
              ),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              onChanged: (val) {
                setState(() {
                  description = val;
                });
                print(val);
              },
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Say something about it!",
              ),
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blueGrey,),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Title',style: TextStyle(color: Colors.white,fontSize: 20),),
                    subtitle: Text('Description',style: TextStyle(color: Colors.white,fontSize: 18),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blueGrey,),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Title',style: TextStyle(color: Colors.white,fontSize: 20),),
                    subtitle: Text('Description',style: TextStyle(color: Colors.white,fontSize: 18),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
