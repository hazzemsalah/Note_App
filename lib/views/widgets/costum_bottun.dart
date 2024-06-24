import 'package:_9_note_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
