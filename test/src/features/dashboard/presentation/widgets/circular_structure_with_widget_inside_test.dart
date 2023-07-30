import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_structure_with_widget_inside.dart';

void main() {
  testWidgets(
      'circularStructureWithWidgetInside renders correctly with provided properties',
      (WidgetTester tester) async {
    // Define a flag variable to check if the action function is called.
    var isActionCalled = false;

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CircularStructureWithWidgetInside(
            action: () {
              isActionCalled = true;
            },
            theColor: Colors.red,
            widget: const Text("Hello, world!"),
          ),
        ),
      ),
    );

    // Verify that the circularStructureWithWidgetInside is displayed with the provided widget.
    expect(find.text("Hello, world!"), findsOneWidget);

    // Verify that the circularStructureWithWidgetInside has the correct color.
    final containerFinder = find.byType(Container);
    expect(containerFinder, findsOneWidget);
    final container = tester.widget<Container>(containerFinder);
    expect(container.decoration, isA<Decoration>());
    final decoration = container.decoration as BoxDecoration;
    expect(decoration.color, equals(Colors.red));

    // Tap on the circularStructureWithWidgetInside.
    await tester.tap(containerFinder);
    await tester.pump();

    // Verify that the action function is called.
    expect(isActionCalled, isTrue);
  });
}
