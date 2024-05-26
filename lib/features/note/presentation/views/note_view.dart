import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';
import 'package:note_app/features/note/presentation/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/features/note/presentation/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor.withOpacity(.6),
        onPressed: () {
          showModalBottomSheet( 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NoteViewBody(),
    );
  }
}
