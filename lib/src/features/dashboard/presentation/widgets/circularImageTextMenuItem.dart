// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';
import 'circularStructureWithWidgetInside.dart';

class CircularImageTextMenuItem extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final action;
  final Color? theColor;
  final String? menuLabel;
  final String? circularImageSource;

  // ignore: sort_constructors_first
  const CircularImageTextMenuItem(
      {super.key,
      this.action,
      this.theColor = TheColors.darkGreen,
      this.menuLabel,
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
              circularStructureWithWidgetInside(
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 210,
                    child: Text(
                      menuLabel!,
                      style: const TextStyle(
                        color: TheColors.white,
                        fontFamily: "CenturyGothic",
                      ),
                    ),
                  ),
                ),
                theColor: theColor,
              ),
            ],
          ),
        ));
  }
}
