import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/auth/presentation/views/signup.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';

void main() {
  testWidgets('SignupTab renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester
        .pumpWidget(const MaterialApp(home: Scaffold(body: SignupTab())));

    // Verify that the four AuthField widgets are displayed.
    expect(find.byType(AuthField), findsNWidgets(4));
    expect(find.text("Email"), findsOneWidget);
    expect(find.text("Phone"), findsOneWidget);
    expect(find.text("Password"), findsNWidgets(2));

    // Verify that the MyButton widget is displayed.
    expect(find.byType(MyButton), findsOneWidget);
  });

  // testWidgets('SignupTab button triggers navigation', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MaterialApp(home: Scaffold(body: SignupTab())));

  //   // Tap on the signup button.
  //   await tester.tap(find.byType(MyButton));
  //   await tester.pumpAndSettle();

  //   // Verify that the navigation to "/dashboard" or appropriate route is triggered.
  //   // Replace the text below with the expected route or verification.
  //   expect(find.text("Welcome to Tele Health"), findsOneWidget);
  // });
}
