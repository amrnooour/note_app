import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final int maxLines;
  const CustomTextField({super.key, required this.title,this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: AppColors.primaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: AppColors.primaryColor)),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white));
}
