import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/utils/constants.dart';
import 'package:note_app/features/note/data/models/note_model.dart';
import 'package:note_app/features/note/presentation/cubit/notes/notes_states.dart';

class NotesCubit extends Cubit<NoteStaes> {
  NotesCubit() : super(NoteInitial());

  List<NoteModel>? allNotes;
  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(Constants.noteBox);
    allNotes = noteBox.values.toList();
    emit(NoteSuccess());
  }
}
