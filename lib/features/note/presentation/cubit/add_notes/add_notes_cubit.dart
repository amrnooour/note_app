import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/utils/constants.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/add_notes/add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNoteStaes> {
  AddNotesCubit() : super(AddNoteInitial());

  Color? color = const Color(0xffAC3931);
  addNote(NoteModel note) async {
    try {
      note.color = color!.value;
      emit(AddNoteLoading());
      var noteBox = Hive.box<NoteModel>(Constants.noteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
