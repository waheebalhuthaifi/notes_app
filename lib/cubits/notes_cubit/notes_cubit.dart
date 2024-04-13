import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesSteate> {
  NotesCubit() : super(InitialState());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
