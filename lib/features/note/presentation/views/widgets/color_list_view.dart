import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/utils/constants.dart';
import 'package:note_app/features/note/presentation/cubit/add_notes/add_notes_cubit.dart';
import 'package:note_app/features/note/presentation/views/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: Constants.kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color =
                  Constants.kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: Constants.kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
