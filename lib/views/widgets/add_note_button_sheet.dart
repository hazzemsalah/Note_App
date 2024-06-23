import 'package:_9_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(hintText: "Title"),
          SizedBox(height: 16),
          CustomTextField(hintText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
