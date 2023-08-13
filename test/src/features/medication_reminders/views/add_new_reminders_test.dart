import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/auth_field.dart'; // Adjust the import path accordingly
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart'; // Adjust the import path accordingly
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart'; // Adjust the import path accordingly
import 'package:telehealth/src/features/medication_reminders/views/add_new_medication.dart'; // Adjust the import path accordingly

void main() {
  testWidgets('AddNewMedication displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AddNewMedication(),
      ),
    );

    // Verify that MyNavbar widget is rendered
    final myNavbarFinder = find.byType(MyNavbar);
    expect(myNavbarFinder, findsOneWidget);

    // Verify that AuthField widgets are rendered
    final authFieldFinder = find.byType(AuthField);
    expect(
        authFieldFinder, findsNWidgets(2)); // There are two AuthField widgets

    // Verify that MyButton widget is rendered
    final myButtonFinder = find.byType(MyButton);
    expect(myButtonFinder, findsOneWidget);

    // Verify that tapping the MyButton triggers router.pop()
    // await tester.tap(myButtonFinder);
    // final router = GoRouter.of(tester.element(find.byType(AddNewMedication)));
    // expect(router.canPop(), isTrue);
  });
}
