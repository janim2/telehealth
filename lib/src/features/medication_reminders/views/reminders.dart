import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

import '../../appointment/widgets/doctors_info_card.dart';

class MedicationsRemindersScreen extends StatefulWidget {
  const MedicationsRemindersScreen({super.key});

  @override
  State<MedicationsRemindersScreen> createState() => _DashboardState();
}

class _DashboardState extends State<MedicationsRemindersScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyNavbar(
                      navLabel: "Medication Reminders",
                      imageSource: "assets/images/medicine.jpg"),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Drugs to be taken today",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  const DoctorInfoCard(
                    imageLink: "assets/images/drug1.png",
                    docName: "Acetazolamide",
                    docPosition: "2 hours more",
                  ),
                  const DoctorInfoCard(
                    imageLink: "assets/images/drug2.png",
                    docName: "Acetylcysteine",
                    docPosition: "3:30 mins more",
                  ),
                  const DoctorInfoCard(
                    imageLink: "assets/images/drug3.png",
                    docName: "Acetylsalicylic",
                    docPosition: "4 hours more",
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'Remind me when it\'s time',
                        style: TextStyle(
                            fontSize: 16, fontFamily: "CenturyGothic"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MyButton(
                    labelText: "Add New Drug",
                    width: 300,
                    icon: Icons.add_circle,
                    ontap: () {
                      context.push("/add_new_medication");
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // ],
      // )
    );
  }
}
