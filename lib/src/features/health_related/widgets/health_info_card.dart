// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';

class HealthInfoCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  String textonCard;
  final String imageLink;
  final action;
  // final onPress;

  // ignore: sort_constructors_first
  HealthInfoCard(
      {super.key,
      required this.imageLink,
      required this.textonCard,
      this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: SizedBox(
        width: 185,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: TheColors.gray),
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(textonCard,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: "CenturyGothic")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.asset(
                        imageLink,
                        // width: 400,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
