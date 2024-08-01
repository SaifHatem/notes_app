import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
