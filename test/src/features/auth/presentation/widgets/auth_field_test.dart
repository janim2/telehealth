import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/auth_field.dart';

void main() {
  testWidgets('AuthField renders correctly with provided properties',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AuthField(
            labelText: "Email",
            labelHint: "Enter your email",
            keyboardType: TextInputType.emailAddress,
            hasObscuredText: false,
          ),
        ),
      ),
    );

    // Verify that the AuthField is displayed with the provided labelText and labelHint.
    expect(find.text("Email"), findsOneWidget);
    expect(find.text("Enter your email"), findsOneWidget);

    // Verify that the TextField has the correct properties.
    final textFieldFinder = find.byType(TextField);
    expect(textFieldFinder, findsOneWidget);
    final textField = tester.widget<TextField>(textFieldFinder);
    expect(textField.keyboardType, equals(TextInputType.emailAddress));
    expect(textField.obscureText, equals(false));
  });
}
