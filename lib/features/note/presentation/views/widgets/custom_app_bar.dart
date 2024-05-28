import 'package:flutter/material.dart';
import 'package:note_app/features/note/presentation/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;
  const CustomAppBar({super.key, required this.title,required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: CustomSearchIcon(icon: icon)),
      ],
    );
  }
}
