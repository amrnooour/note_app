import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';
import 'package:note_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
      color: AppColors.primaryColor),
      child: const Center(child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Add",style: Styles.add,),
      ),),
    );
  }
}