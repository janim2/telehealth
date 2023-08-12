import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/health_related/widgets/health_info_card.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

class HealthRelatedInfoScreen extends StatefulWidget {
  const HealthRelatedInfoScreen({super.key});

  @override
  State<HealthRelatedInfoScreen> createState() => _DashboardState();
}

class _DashboardState extends State<HealthRelatedInfoScreen> {
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
                      navLabel: "Health Related Educational Materials",
                      imageSource: "assets/images/medicine.jpg"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/food.jpg",
                            textonCard: "Healthy Eating and Nutrition",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Healthy Eating and Nutrition"}");
                            },
                          )),
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/h2.jpg",
                            textonCard: "Heart Health\n",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Heart Health"}");
                            },
                          )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/h3.jpg",
                            textonCard: "Benefits of Exercise",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Benefits of Exercise"}");
                            },
                          )),
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/h4.jpg",
                            textonCard: "Personal Hygiene\n",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Personal Hygiene"}");
                            },
                          )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/h5.jpg",
                            textonCard: "Mental Wellness",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Mental Wellness"}");
                            },
                          )),
                      Expanded(
                          flex: 1,
                          child: HealthInfoCard(
                            imageLink: "assets/images/h6.jpg",
                            textonCard: "Safe Sex Practice",
                            action: () {
                              context.push(
                                  "/health_info_details/${"Safe Sex Practice"}");
                            },
                          )),
                    ],
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
