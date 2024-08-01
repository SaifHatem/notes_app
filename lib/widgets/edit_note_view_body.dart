import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 12),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
