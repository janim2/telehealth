// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../dashboard/presentation/widgets/circular_image_text_menu_item.dart';

class MyNavbar extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String? navLabel;
  final String? imageSource;

  // ignore: sort_constructors_first
  const MyNavbar(
      {super.key, required this.navLabel, required this.imageSource});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
            onTap: () {
              final router = GoRouter.of(context);
              if (router.canPop()) router.pop();
            },
            child: const Icon(Icons.arrow_back)),
        CircularImageTextMenuItem(
          menuLabel: navLabel,
          circularImageSource: imageSource,
          showbgColor: false,
        ),
      ],
    );
  }
}
