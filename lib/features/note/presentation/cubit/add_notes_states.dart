class AddNoteStaes {}

class AddNoteInitial extends AddNoteStaes {}

class AddNoteLoading extends AddNoteStaes {}

class AddNoteSuccess extends AddNoteStaes {}

class AddNoteFailure extends AddNoteStaes {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
