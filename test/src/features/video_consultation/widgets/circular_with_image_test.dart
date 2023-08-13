import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CircularWithImage displays correctly',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(
    //   MaterialApp(
    //     home: Scaffold(
    //       body: CircularWithImage(
    //         icon: Icons.add,
    //         action: () {},
    //         thecolor:
    //             TheColors.darkGreen, // Use a color from your TheColors class
    //       ),
    //     ),
    //   ),
    // );

    // // Verify that the circular container is rendered with the correct color
    // final circularContainerFinder = find.byType(Container);
    // expect(circularContainerFinder, findsOneWidget);
    // final circularContainer = tester.widget<Container>(circularContainerFinder);
    // expect(
    //     circularContainer.decoration,
    //     const BoxDecoration(
    //         shape: BoxShape.circle, color: TheColors.darkGreen));

    // // Verify that the IconButton is rendered with the correct icon
    // final iconButtonFinder = find.byType(IconButton);
    // expect(iconButtonFinder, findsOneWidget);
    // final iconButton = tester.widget<IconButton>(iconButtonFinder);
    // expect(iconButton.icon, const Icon(Icons.add, color: Colors.white));

    // // Verify that tapping the IconButton triggers the action
    // bool actionTriggered = false;
    // await tester.pumpWidget(
    //   MaterialApp(
    //     home: Scaffold(
    //       body: CircularWithImage(
    //         icon: Icons.add,
    //         action: () {
    //           actionTriggered = true;
    //         },
    //         thecolor: TheColors.darkGreen,
    //       ),
    //     ),
    //   ),
    // );
    // await tester.tap(iconButtonFinder);
    // expect(actionTriggered, isTrue);
  });
}
