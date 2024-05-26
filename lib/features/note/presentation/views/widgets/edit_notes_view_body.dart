import 'package:flutter/material.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_app_bar.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              title: "title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              title: "content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
