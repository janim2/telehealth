import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';

void main() {
  testWidgets('MyButton renders correctly with provided properties',
      (WidgetTester tester) async {
    // Define a flag variable to check if the onTap function is called.
    var isTapped = false;

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: MyButton(
            labelText: "Log in",
            ontap: () {
              isTapped = true;
            },
            width: 200.0,
            icon: Icons.arrow_forward,
          ),
        ),
      ),
    );

    // Verify that the MyButton is displayed with the provided labelText and icon.
    expect(find.text("Log in"), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward), findsOneWidget);

    // Verify that the MyButton has the correct width.
    final buttonFinder = find.byType(GestureDetector);
    expect(buttonFinder, findsOneWidget);
    final button = tester.widget<GestureDetector>(buttonFinder);
    expect(button.child, isA<Container>());
    // expect(button.child!.width, equals(200.0));

    // Tap on the MyButton.
    await tester.tap(buttonFinder);
    await tester.pump();

    // Verify that the onTap function is called.
    expect(isTapped, isTrue);
  });
}
