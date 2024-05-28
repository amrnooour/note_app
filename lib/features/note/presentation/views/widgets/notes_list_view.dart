import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/notes/notes_cubit.dart';
import 'package:note_app/features/note/presentation/cubit/notes/notes_states.dart';
import 'package:note_app/features/note/presentation/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: BlocBuilder<NotesCubit, NoteStaes>(
        builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).allNotes ?? [];
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(
                noteModel: notes[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
