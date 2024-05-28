import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/notes/notes_cubit.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_app_bar.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNotesViewBody({super.key, required this.note});

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: "Edit note",
              icon: Icons.check,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              title: widget.note.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (value) {
                subTitle = value;
              },
              title: widget.note.subTitle,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
