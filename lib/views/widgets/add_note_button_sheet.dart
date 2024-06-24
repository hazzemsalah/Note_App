import 'package:_9_note_app/views/widgets/costum_bottun.dart';
import 'package:_9_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 28),
          CustomTextField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(height: 70),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
