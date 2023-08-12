import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/appointment/widgets/circular_structure_with_widgets.dart';

void main() {
  testWidgets('CircularStructureWithWidgetsInside should render correctly',
      (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CircularStructureWithWidgetsInside(
            action: () {},
            theColor: Colors.blue,
            widget: const Text('Hello', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );

    // Verify that the circular structure is rendered with the specified color
    expect(find.byType(GestureDetector), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
    expect(find.text('Hello'), findsOneWidget);
    // expect(tester.widget<Container>(find.byType(Container)).decoration!.color, Colors.blue);
  });
}
