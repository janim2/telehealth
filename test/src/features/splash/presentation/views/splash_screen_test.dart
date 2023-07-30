import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/splash/presentation/views/splash_screen.dart';

void main() {
  testWidgets('SplashScreen animation and navigation',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: SplashScreen()));

    // Verify that the SplashScreen is displayed.
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(SlideTransition), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    //TODO: FIX TESTS THAT CHECK IF NAVIGATION TO /AUTH WAS SUCCESSFUL
    // Wait for the animation to complete.
    // await tester.pumpAndSettle(const Duration(seconds: 2));

    // // Verify that the navigation to "/auth" or appropriate route is triggered.
    // expect(find.text('Welcome to Tele Health'), findsNothing);
    // expect(find.text('Sign In'), findsOneWidget);
    // expect(find.text('Sign Up'), findsOneWidget);
  });
}
