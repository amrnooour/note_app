import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/core/utils/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16,right: 8),
      decoration: BoxDecoration(color: const Color(0xffFFCC80),borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        ListTile(
          title: const Text("Flutter Tips",style: Styles.title,),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Text("build your career with amr nour",style: Styles.subTitle.copyWith(fontSize: 16),),
          ),
          trailing: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text("25 june 2024",style: Styles.subTitle,),
        )
      ],),
    );
  }
}