import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/auth/presentation/views/auth.dart';

void main() {
  testWidgets('AuthScreen renders correctly', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AuthScreen()));

    // Verify that the logo image is displayed.
    expect(find.byType(Image), findsOneWidget);

    // Verify that the welcome text is displayed.
    expect(find.text("Welcome to Telehealth"), findsOneWidget);

    //verify that the tabbarView is displayed
    expect(find.byType(TabBarView), findsOneWidget);

    // Verify that the 2 Container is displayed.
    expect(find.byType(Container), findsNWidgets(5));

    // Verify that the 8 SizedBox is displayed.
    expect(find.byType(SizedBox), findsNWidgets(8));
  });
}
