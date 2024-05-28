import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/utils/constants.dart';
import 'package:note_app/core/utils/simple_bloc_observer.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/views/note_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteMpdelAdapter());
  await Hive.openBox<NoteMpdel>(Constants.noteBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NoteView(),
    );
  }
}
