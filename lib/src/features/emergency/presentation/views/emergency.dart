import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/core/utils/colors.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_structure_with_widget_inside.dart';
import 'package:telehealth/src/features/health_related/widgets/health_info_card.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _DashboardState();
}

class _DashboardState extends State<EmergencyScreen> {
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
                      navLabel: "Emergency",
                      imageSource: "assets/images/ambulance.png"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/alarm.png",
                            textonCard:
                                "Hospital recieves automatic emergency alert and prepare towards it\n",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Healthy Eating and Nutrition"}");
                            },
                          )),
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/video-player.png",
                            textonCard:
                                "Switch video and recieve instructions from providers before ambulance arrives",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Heart Health"}");
                            },
                          )),
                    ],
                  ),
                  Center(
                    child: CircularStructureWithWidgetInside(
                      theColor: TheColors.gray,
                      widget: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/ambulance.png")),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: CircularStructureWithWidgetInside(
                      theColor: Colors.red,
                      widget: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.call,
                              color: TheColors.white,
                            )),
                      ),
                    ),
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
