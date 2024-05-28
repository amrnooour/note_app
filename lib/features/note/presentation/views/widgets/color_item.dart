import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;
  const ColorItem({super.key, required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}
