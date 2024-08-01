import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        //! حطيت علامة الاستفهام عشان انا مش ضامن انه مش بنل , ولو مكنتش ب نل ف خلاص خد ترو ف هيجع السترينج
        if (value?.isEmpty ?? true) {
          return 'This Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        12,
      ),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
