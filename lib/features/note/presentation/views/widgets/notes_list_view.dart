import 'package:flutter/material.dart';
import 'package:note_app/features/note/presentation/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        ),),
    );
  }
}