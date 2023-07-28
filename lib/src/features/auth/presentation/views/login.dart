import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/auth_field.dart';

import '../widgets/button.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AuthField(
            labelHint: "Enter your email",
            labelText: "Email",
          ),
          const AuthField(
            labelHint: "Enter your password",
            labelText: "Password",
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Forgot your password",
                style: TextStyle(
                  fontFamily: "CenturyGothic",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MyButton(
              labelText: "Log in",
              icon: Icons.arrow_forward,
              ontap: () {
                // showMsg("Welcome to Tele Health");
                context.push("/dashboard");
              },
              width: MediaQuery.of(context).size.width - 30),
        ],
      ),
    );
  }
}
