import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';

class MyButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String labelText;
  final double width;
  final ontap;
  final IconData? icon;

  // ignore: sort_constructors_first
  const MyButton(
      {super.key,
      required this.labelText,
      this.ontap,
      required this.width,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: width,
        height: 50,
        decoration: BoxDecoration(
            color: TheColors.green,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            border: Border.all(color: TheColors.green)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   icon,
            //   color: iconColor,
            // ),
            // const SizedBox(width: 10.0),
            Text(
              labelText!,
              style: const TextStyle(
                color: TheColors.white,
                fontSize: 20,
                fontFamily: "CenturyGothic",
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              icon,
              color: TheColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
