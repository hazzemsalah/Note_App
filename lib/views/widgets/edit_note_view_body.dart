import 'package:_9_note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:_9_note_app/models/note_model.dart';
import 'package:_9_note_app/views/widgets/custom_app_bar.dart';
import 'package:_9_note_app/views/widgets/custom_text_field.dart';
import 'package:_9_note_app/views/widgets/edit_note_color_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }),
          const SizedBox(height: 50),
          CustomTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: widget.note.content,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 16),
          EditNoteColorsList(note: widget.note)
        ],
      ),
    );
  }
}
