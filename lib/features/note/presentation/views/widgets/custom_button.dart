import 'package:flutter/material.dart';
import 'package:note_app/core/utils/colors.dart';
import 'package:note_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isLoading;
  const CustomButton({super.key, this.onTap,this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primaryColor),
        child: isLoading? const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        ) : const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Add",
              style: Styles.add,
            ),
          ),
        ),
      ),
    );
  }
}
