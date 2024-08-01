import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({
    super.key,
    this.onTappp,
  });

  VoidCallback? onTappp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(.2),
      ),
      child: IconButton(
        onPressed: onTappp,
        icon: const Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
