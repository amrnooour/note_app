import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/add_notes_cubit.dart';
import 'package:note_app/features/note/presentation/cubit/add_notes_states.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_button.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            title: "title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            title: "content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNotesCubit,AddNoteStaes>(
            builder: (context, state) => CustomButton(
              isLoading: state is AddNoteLoading? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var note = NoteMpdel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.black.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(note);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ), 
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
