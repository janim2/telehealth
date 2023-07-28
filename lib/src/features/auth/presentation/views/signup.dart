import 'package:flutter/material.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/auth_field.dart';
import '../widgets/button.dart';

class SignupTab extends StatelessWidget {
  const SignupTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AuthField(
                labelHint: "Enter your email",
                labelText: "Email",
              ),
              const AuthField(
                labelHint: "Enter your phone",
                labelText: "Phone",
              ),
              const AuthField(
                labelHint: "Enter your password",
                labelText: "Password",
              ),
              const AuthField(
                labelHint: "Confirm your password",
                labelText: "Password",
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                  labelText: "Sign Up",
                  icon: Icons.arrow_forward,
                  width: MediaQuery.of(context).size.width - 30),
            ],
          ),
        ),
      ],
    );
  }
}
