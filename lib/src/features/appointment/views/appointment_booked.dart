import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';

class AppointmentBookedScreen extends StatefulWidget {
  const AppointmentBookedScreen({super.key});

  @override
  State<AppointmentBookedScreen> createState() =>
      _AppointmentBookedScreenState();
}

class _AppointmentBookedScreenState extends State<AppointmentBookedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Appointment Booking'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'You have successfully booked an appointment.',
              style: TextStyle(fontSize: 15, fontFamily: "CenturyGothic"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            MyButton(
              labelText: "Back to Dashboard",
              width: 300,
              icon: Icons.arrow_forward,
              ontap: () {
                context.pushReplacement("/dashboard");
              },
            )
          ],
        ),
      ),
    );
  }
}
