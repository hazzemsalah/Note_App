import 'package:_9_note_app/constants.dart';
import 'package:_9_note_app/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();

      emit(NotesCubitSuccess(notes));
    } catch (e) {
      emit(NotesCubitFailure(errMessage: e.toString()));
    }
  }
}
