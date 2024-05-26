import 'package:flutter/material.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_app_bar.dart';
import 'package:note_app/features/note/presentation/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(child: NotesListView()),
        ],
        ),
      ),
    );
  }
}
