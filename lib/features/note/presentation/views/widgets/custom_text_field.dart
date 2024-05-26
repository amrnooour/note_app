import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        hintText: "title",
        hintStyle: const TextStyle(
          color: AppColors.primaryColor
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: AppColors.primaryColor)

      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide:  BorderSide(color: color?? Colors.white)
  );
}