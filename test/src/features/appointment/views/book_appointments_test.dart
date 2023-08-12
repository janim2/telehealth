import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/appointment/views/book_appointments.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';

void main() {
  testWidgets('BookAppointmentsScreen should render correctly',
      (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(
      const MaterialApp(
        home: BookAppointmentsScreen(drName: 'Dr. Alex Konadu'),
      ),
    );

    // Verify that the doctor's name and position are correctly displayed
    expect(find.text('Book appointment with'), findsOneWidget);
    expect(find.text('Dr. Alex Konadu'), findsOneWidget);
    expect(find.text('15+ years of experience'), findsOneWidget);

    // Verify that the date and time selection widgets are correctly displayed
    expect(find.text('Select date'), findsOneWidget);
    // expect(find.byType(CircularStructureWithWidgetInside), findsNWidgets(6)); // Assuming there are five date options
    expect(find.text('Select time'), findsOneWidget);
    // expect(find.byType(CircularStructureWithWidgetInside), findsNWidgets(8)); // Assuming there are six time options

    // TODO: You can add more specific widget verification here

    // Example: Verify that the Message and Book buttons are displayed
    expect(find.byType(MyButton), findsNWidgets(2));
    expect(find.text('Message'), findsOneWidget);
    expect(find.text('Book'), findsOneWidget);
  });
}
