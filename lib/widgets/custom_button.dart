import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      // Better than double.infinity
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
