import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/appointment/views/appointments.dart';
import 'package:telehealth/src/features/appointment/widgets/doctors_info_card.dart';

void main() {
  testWidgets('AppointmentsScreen should render correctly',
      (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(
      const MaterialApp(
        home: AppointmentsScreen(),
      ),
    );

    // Verify that MyNavbar is rendered with the specified label and image
    expect(find.text('Schedule an appointment'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    // Verify that the doctor cards are rendered
    expect(find.text('Select a doctor'), findsOneWidget);
    expect(find.byType(DoctorInfoCard),
        findsNWidgets(2)); // Assuming there are two DoctorInfoCard widgets

    // TODO: You can add more specific widget verification here

    // Example: Verify that the doctor names are correctly displayed
    expect(find.text('Dr. Alex Konadu'), findsOneWidget);
    expect(find.text('Dr. Abigail'), findsOneWidget);
  });
}
