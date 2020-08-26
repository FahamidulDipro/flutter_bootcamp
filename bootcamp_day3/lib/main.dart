import 'package:bootcamp_day3/Model/Note.dart';
import 'package:bootcamp_day3/SecondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title;
  String description;
  var listNote = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Note n1 = Note(
            title: title,
            description: description,
          );
          setState(() {
            listNote.add(n1);
          });

          print(listNote.length);
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Note App"),
      ),
      body: Column(
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 12.0,
          //     bottom: 25,
          //   ),
          //   child: Text(
          //     "Note App",
          //     style: TextStyle(
          //       fontSize: 32,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextField(
              onChanged: (val) {
                setState(() {
                  title = val;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter title",
                // hintText: "Name",
              ),
              style: TextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextField(
              onChanged: (val) {
                setState(() {
                  description = val;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter description",
                // hintText: "Name",
              ),
              style: TextStyle(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Note List",
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 470,
            child: ListView.builder(
              itemCount: listNote.length,
              itemBuilder: (BuildContext context, int index) {
                Note n1 = listNote[index];
                return GestureDetector(
                  onLongPress: () {
                    setState(() {
                      listNote.removeAt(index);
                    });
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          title: n1.title,
                          description: n1.description,
                        ),
                      ),
                    );
                  },
                  child: showNote(n1),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget showNote(Note note) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              note.title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              bottom: 12,
            ),
            child: Text(
              note.description,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
