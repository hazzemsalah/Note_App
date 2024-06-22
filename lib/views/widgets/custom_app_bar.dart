import 'package:_9_note_app/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

