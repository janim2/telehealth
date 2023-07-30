// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CircularStructureWithWidgetInside extends StatelessWidget {
  final action;
  final Color? theColor;
  final Widget? widget;

  // ignore: sort_constructors_first
  const CircularStructureWithWidgetInside(
      {super.key,
      this.action,
      this.theColor = Colors.transparent,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
          margin: const EdgeInsets.only(left: 13, bottom: 12),
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            color: theColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
            // border: Border.all(color: TheColors.gray)
          ),
          child: widget),
    );
  }
}
