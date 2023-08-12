import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/appointment/widgets/doctors_info_card.dart';

void main() {
  testWidgets('DoctorInfoCard should render correctly',
      (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DoctorInfoCard(
            imageLink:
                'assets/images/bg1.jpg', // Replace with your image asset path
            docName: 'Dr. John Doe',
            docPosition: 'General Practitioner',
            action: () {},
          ),
        ),
      ),
    );

    // Verify that the doctor's name and position are correctly displayed
    expect(find.text('Dr. John Doe'), findsOneWidget);
    expect(find.text('General Practitioner'), findsOneWidget);

    // Verify that the GestureDetector is working as expected
    // await tester.tap(find.byType(GestureDetector));
    // await tester.pumpAndSettle(); // Wait for any animations to complete

    // TODO: You can add more specific widget verification here

    // Example: Verify that the doctor's image is displayed
    // expect(find.byType(Image), findsOneWidget);
  });
}
