import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';

import '../../health_related/widgets/my_nav_bar.dart';

class AddNewMedication extends StatefulWidget {
  const AddNewMedication({super.key});

  @override
  State<AddNewMedication> createState() => _AddNewMedicationState();
}

class _AddNewMedicationState extends State<AddNewMedication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const MyNavbar(
                      navLabel: "Add New Medication",
                      imageSource: "assets/images/medicine.jpg"),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Add new medication",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  const AuthField(
                    labelHint: "Enter drug name",
                    labelText: "Name",
                  ),
                  const AuthField(
                    labelHint: "Enter time to take it",
                    labelText: "Take Time",
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MyButton(
                      labelText: "Add",
                      icon: Icons.arrow_forward,
                      ontap: () {
                        final router = GoRouter.of(context);
                        if (router.canPop()) router.pop();
                      },
                      width: MediaQuery.of(context).size.width - 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
