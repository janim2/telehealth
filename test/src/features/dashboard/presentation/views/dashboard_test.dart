import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/dashboard/presentation/views/dashboard.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_image_text_menu_item.dart';

void main() {
  testWidgets('Dashboard displays circular image text menu items',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: Dashboard()));

    // Verify that the logo image is displayed.
    expect(find.byType(Image), findsNWidgets(9));

    // Verify that the "Welcome to Telehealth" text is displayed.
    expect(find.text("Welcome to Telehealth"), findsOneWidget);

    // Verify that all the CircularImageTextMenuItem widgets are displayed.
    expect(find.byType(CircularImageTextMenuItem), findsNWidgets(8));

    // Verify that the "Logout" menu item is displayed.
    expect(find.text("Logout"), findsOneWidget);
  });
  //TODO: FIX THE NAVIGATION TEST
  // testWidgets('Dashboard navigation on Logout', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MaterialApp(home: Dashboard()));

  //   // Tap on the "Logout" menu item.
  //   await tester.tap(find.text("Logout"));
  //   await tester.pumpAndSettle();

  //   // Verify that the navigation to "/" or appropriate route is triggered.
  //   // Replace the text below with the expected route or verification.
  //   expect(find.text("Welcome to Tele Health"), findsOneWidget);
  // });
}
