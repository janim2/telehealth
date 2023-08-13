import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/core/utils/colors.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_structure_with_widget_inside.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

import '../../auth/presentation/widgets/button.dart';

class BookAppointmentsScreen extends StatefulWidget {
  const BookAppointmentsScreen({super.key, required this.drName});
  final String? drName;

  @override
  State<BookAppointmentsScreen> createState() => _DashboardState();
}

class _DashboardState extends State<BookAppointmentsScreen> {
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
                      navLabel: "Book an appointment",
                      imageSource: "assets/images/calender.jpg"),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Book appointment with",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    // width: 100,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: widget.drName == "Dr. Alex Konadu"
                            ? const AssetImage("assets/images/bg1.jpg")
                            : const AssetImage("assets/images/bg2.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, top: 13.0, right: 13.0, bottom: 0.0),
                      child: Text(
                        "${widget.drName}",
                        style: const TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Text(
                        "15+ years of experience",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Select date",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "12/09/2023",
                            style: TextStyle(color: TheColors.white),
                          ),
                          theColor: TheColors.darkGreen,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "12/09/2023",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "12/09/2023",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "12/09/2023",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "12/09/2023",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Select time",
                        style: TextStyle(
                            fontFamily: "CenturyGothic", fontSize: 18),
                      ),
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "08:00AM",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "09:00AM",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "10:00AM",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "11:00AM",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "12:00PM",
                            style: TextStyle(color: TheColors.white),
                          ),
                          theColor: TheColors.darkGreen,
                        ),
                        CircularStructureWithWidgetInside(
                          widget: Text(
                            "13:00PM",
                            style: TextStyle(color: TheColors.darkGreen),
                          ),
                          theColor: TheColors.gray,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: MyButton(
                          labelText: "Message",
                          icon: Icons.chat,
                          ontap: () {
                            // showMsg("Welcome to Tele Health");
                            context.push("/messaging");
                          },
                          width: 140,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: MyButton(
                          labelText: "Book",
                          icon: Icons.arrow_forward,
                          ontap: () {
                            // showMsg("Welcome to Tele Health");
                            context.push("/appointment_booked");
                          },
                          width: 140,
                        ),
                      ),
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
