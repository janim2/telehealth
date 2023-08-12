// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';

class DoctorInfoCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String docName;
  final String docPosition;
  final String imageLink;
  final action;
  // final onPress;

  // ignore: sort_constructors_first
  const DoctorInfoCard(
      {super.key,
      required this.imageLink,
      required this.docName,
      required this.docPosition,
      this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: SizedBox(
        // width: 185,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: TheColors.gray),
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageLink),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(docName,
                              overflow: TextOverflow.clip,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "CenturyGothic")),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(docPosition,
                              overflow: TextOverflow.clip,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "CenturyGothic")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
