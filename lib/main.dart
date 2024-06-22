import 'package:_9_note_app/views/notes_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      home: const NotesView(),
    );
  }
}