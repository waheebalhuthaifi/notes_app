import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesSteate> {
  NotesCubit() : super(InitialState());
}
