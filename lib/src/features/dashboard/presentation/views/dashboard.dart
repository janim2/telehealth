import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_image_text_menu_item.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          // Stack(
          //   children: [
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height,
          //       child: Image.asset(
          //         "assets/images/bg2.jpg",
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          ListView(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo_bg.png",
                    // height: 150,
                  ),
                  const Text(
                    "Welcome to Telehealth",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "CenturyGothic",
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  CircularImageTextMenuItem(
                    menuLabel: "Health Related Educational Materials",
                    circularImageSource: "assets/images/medicine.jpg",
                    action: () {
                      context.push("/health_related");
                    },
                  ),
                  CircularImageTextMenuItem(
                    menuLabel: "Appointment Scheduling",
                    circularImageSource: "assets/images/calender.jpg",
                    action: () {
                      context.push("/appointments");
                    },
                  ),
                  const CircularImageTextMenuItem(
                    menuLabel: "Medication Reminders",
                    circularImageSource: "assets/images/drugs.jpg",
                  ),
                  CircularImageTextMenuItem(
                    menuLabel: "Videos Consultation",
                    circularImageSource: "assets/images/messaging.jpg",
                    action: () {
                      context.push("/video_consultation");
                    },
                  ),
                  const CircularImageTextMenuItem(
                    menuLabel: "Secure Messaging",
                    circularImageSource: "assets/images/chat.jpg",
                  ),
                  CircularImageTextMenuItem(
                    action: () {
                      context.push("/");
                    },
                    menuLabel: "Logout",
                    theColor: Colors.red,
                    circularImageSource: "assets/images/logout.png",
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
