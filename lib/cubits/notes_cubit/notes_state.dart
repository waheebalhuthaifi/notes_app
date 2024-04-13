part of 'notes_cubit.dart';

abstract class NotesSteate {}

class InitialState extends NotesSteate {}

class NotesLoadingState extends NotesSteate {}

class NotesSuccessState extends NotesSteate {
  final List<NoteModel> notes;

  NotesSuccessState(this.notes);
}

class NotesFailureState extends NotesSteate {
  final String errMessage;

  NotesFailureState(this.errMessage);
}
