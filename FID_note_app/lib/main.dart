import 'package:fid_note_app/Model/NoteApp.dart';
import 'package:fid_note_app/SecondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NoteApp n1 =
      NoteApp(title: 'This is a title', description: 'This is a description');
  String title;
  String description;
  var listNote = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NoteApp n1 = NoteApp(title: title, description: description);
          setState(() {
            listNote.add(n1);
          });
          print(listNote.length);
        },
        child: Icon(Icons.add_comment),
        backgroundColor: Colors.blueGrey,
      ),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Dream Notes',
            style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Text(
              'Create your own notes',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'DancingScript',
                  color: Colors.blueGrey),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      title = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Title',
                  ),
                  style: TextStyle(fontSize: 20, fontFamily: 'Allan'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    description = val;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter Description',
                ),
                style: TextStyle(fontSize: 20, fontFamily: 'Allan'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Note List',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'DancingScript',
                    decoration: TextDecoration.underline),
              ),
            ),
            Container(
              height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: listNote.length,
                itemBuilder: (BuildContext context, index) {
                  NoteApp n1 = listNote[index];
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
                                  )));
                    },
                    child: showNote(n1),
                  );
//
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showNote(NoteApp n1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            n1.title,
            style: TextStyle(
                color: Colors.black, fontSize: 10, fontFamily: 'DancingScript'),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 40),
            child: Text(
              n1.description,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 8,
                  fontFamily: 'DancingScript'),
            ),
          ),
        ),
      ),
    );
  }
}
