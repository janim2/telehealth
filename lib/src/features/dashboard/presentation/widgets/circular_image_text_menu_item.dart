// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';
import 'circular_structure_with_widget_inside.dart';

class CircularImageTextMenuItem extends StatelessWidget {
  final action;
  final Color? theColor;
  final String? menuLabel;
  final bool? showbgColor;
  final String? circularImageSource;

  // ignore: sort_constructors_first
  const CircularImageTextMenuItem(
      {super.key,
      this.action,
      this.theColor = TheColors.darkGreen,
      this.menuLabel,
      this.showbgColor = true,
      this.circularImageSource});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action,
        child: Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Row(
            children: [
              Container(
                width: 45,
                height: 45,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  circularImageSource!,
                ),
              ),
              CircularStructureWithWidgetInside(
                widget: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 210,
                    child: Text(
                      menuLabel!,
                      style: TextStyle(
                        color: showbgColor == true ? TheColors.white : theColor,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                  ),
                ),
                theColor: showbgColor == true ? theColor! : Colors.transparent,
              ),
            ],
          ),
        ));
  }
}
