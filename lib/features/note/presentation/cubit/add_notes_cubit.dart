import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/utils/constants.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNoteStaes> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteMpdel note) async {
    try {
      emit(AddNoteLoading());
      var noteBox = Hive.box<NoteMpdel>(Constants.noteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
