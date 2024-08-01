import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the keyboard height using MediaQuery
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: keyboardHeight, // Adjust padding based on the keyboard height
          left: 16,
          right: 16,
          top: 20,
        ),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
