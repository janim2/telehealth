import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart'; // Adjust the import path accordingly
import 'package:telehealth/src/features/appointment/widgets/doctors_info_card.dart'; // Adjust the import path accordingly
import 'package:telehealth/src/features/messaging/views/secure_messaging.dart';

void main() {
  testWidgets('SecureMessagingScreen displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SecureMessagingScreen(),
      ),
    );

    // Verify that MyNavbar widget is rendered
    final myNavbarFinder = find.byType(MyNavbar);
    expect(myNavbarFinder, findsOneWidget);

    // Verify that doctor info cards are rendered
    final doctorInfoCardFinder = find.byType(DoctorInfoCard);
    expect(doctorInfoCardFinder,
        findsNWidgets(2)); // There are two DoctorInfoCard widgets

    // Verify that tapping a doctor info card triggers context.push()
    // await tester.tap(doctorInfoCardFinder.first);
    // final router = GoRouter.of(tester.element(find.byType(SecureMessagingScreen)));
    // expect(router.currentMatch?.route, '/messaging');

    // You can also test tapping the other doctor info card in a similar way
  });
}
