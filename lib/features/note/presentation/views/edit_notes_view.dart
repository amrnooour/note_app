import 'package:flutter/material.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/views/widgets/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  final NoteModel note;
  const EditNotesView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(note: note,),
    );
  }
}
