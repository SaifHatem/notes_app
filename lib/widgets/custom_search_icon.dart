import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIcon extends StatelessWidget {
  CustomIcon({
    super.key,
    this.onTappp,
    required this.icon,
  });

  VoidCallback? onTappp;
  final IconData icon;

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
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
