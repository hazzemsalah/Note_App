import 'package:_9_note_app/views/widgets/custom_app_bar.dart';
import 'package:_9_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 35),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(hintText: "Tilte"),
          SizedBox(height: 16),
          CustomTextField(hintText: "Content", maxLines: 5)
        ],
      ),
    );
  }
}