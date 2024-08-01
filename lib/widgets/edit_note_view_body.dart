import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(
          top: 16.0, left: 16, right: 16, bottom: keyboardHeight),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              text: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Edit Note',
            ),
          ],
        ),
      ),
    );
  }
}
