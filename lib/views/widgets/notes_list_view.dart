import 'package:_9_note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:_9_note_app/models/note_model.dart';
import 'package:_9_note_app/views/widgets/custom_note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesCubitState>(
        builder: (context, state) {

          List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
