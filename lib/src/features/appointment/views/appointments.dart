import 'package:flutter/material.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

import '../widgets/doctors_info_card.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _DashboardState();
}

class _DashboardState extends State<AppointmentsScreen> {
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
                      navLabel: "Schedule an appointment",
                      imageSource: "assets/images/calender.jpg"),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Select a doctor",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  DoctorInfoCard(
                    imageLink: "assets/images/bg1.jpg",
                    docName: "Dr. Alex Konadu",
                    docPosition: "General Practitioner",
                    action: () {
                      // context.push(
                      //     "/health_info_details/${"Healthy Eating and Nutrition"}");
                    },
                  ),
                  DoctorInfoCard(
                    imageLink: "assets/images/bg2.jpg",
                    docName: "Dr. Abigail",
                    docPosition: "Psychiatrist",
                    action: () {
                      // context.push(
                      //     "/health_info_details/${"Healthy Eating and Nutrition"}");
                    },
                  ),
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
