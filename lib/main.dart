import 'package:flutter/material.dart';
import 'package:note_app/features/note/presentation/views/note_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins"
      ),  
      home: const NoteView(), 
    );
  }
}
