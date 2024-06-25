import 'package:_9_note_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
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
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 28,
                  width: 28,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ))
              : const Text(
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
