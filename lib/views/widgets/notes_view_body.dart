import 'package:_9_note_app/views/widgets/custom_app_bar.dart';
import 'package:_9_note_app/views/widgets/custom_note_item.dart';
import 'package:flutter/material.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 35),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}

