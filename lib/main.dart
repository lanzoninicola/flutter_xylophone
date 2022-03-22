import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Notes(),
        ),
      ),
    );
  }
}

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  void pressingNoteOne() => null;

  void pressingNoteTwo() => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Note(
            label: 'play1',
            onPressed: pressingNoteOne,
            color: Colors.green
          ),
           Note(
            label: 'play2',
            onPressed: pressingNoteTwo,
            color: Colors.red
          )
        ],
      ),
    );
  }
}

class Note extends StatelessWidget {
  final String label;
  final onPressed;
  final color;

  const Note({this.label, this.color, this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color)),
        onPressed: () => onPressed(),
        child: Text(
          "$label",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
