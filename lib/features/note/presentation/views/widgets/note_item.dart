import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/core/utils/styles.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/notes/notes_cubit.dart';
import 'package:note_app/features/note/presentation/views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel noteModel;
  const NoteItem({required this.noteModel, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNotesView(note: noteModel,),
            ));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 8),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: Styles.title,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  noteModel.subTitle,
                  style: Styles.subTitle.copyWith(fontSize: 16),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                noteModel.date,
                style: Styles.subTitle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
