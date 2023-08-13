// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';

class CircularWithImage extends StatelessWidget {
  final IconData? icon;
  final action;
  final Color thecolor;

  // ignore: sort_constructors_first
  const CircularWithImage(
      {super.key,
      required this.icon,
      this.action,
      this.thecolor = TheColors.darkGreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: thecolor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(8),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: action,
      ),
    );
  }
}
