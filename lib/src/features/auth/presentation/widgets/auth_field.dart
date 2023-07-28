// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';

class AuthField extends StatelessWidget {
  const AuthField(
      {super.key,
      this.labelText,
      this.controller,
      this.labelHint,
      this.onSubmit,
      this.keyboardType,
      this.hasObscuredText = false});

  final String? labelText;
  final String? labelHint;
  final bool? hasObscuredText;
  final TextEditingController? controller;
  final ValueChanged<String?>? onSubmit;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: TheColors.gray,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: TheColors.green,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                // color: TheColors.green,
                child: Text(
                  labelText!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "CenturyGothic",
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: TextField(
                  keyboardType: keyboardType,
                  obscureText: hasObscuredText!,
                  style: const TextStyle(
                    fontFamily: "CenturyGothic",
                  ),
                  decoration: InputDecoration(
                    hintText: labelHint!,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
