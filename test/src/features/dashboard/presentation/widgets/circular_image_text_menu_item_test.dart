import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_image_text_menu_item.dart';

void main() {
  testWidgets(
      'CircularImageTextMenuItem renders correctly with provided properties',
      (WidgetTester tester) async {
    // Define a flag variable to check if the action function is called.
    // var isActionCalled = false;

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CircularImageTextMenuItem(
            // action: () {
            //   isActionCalled = true;
            // },
            theColor: Colors.red,
            menuLabel: "Health Related Educational Materials",
            circularImageSource: "assets/images/medicine.jpg",
          ),
        ),
      ),
    );

    // Verify that the CircularImageTextMenuItem is displayed with the provided menuLabel.
    expect(find.text("Health Related Educational Materials"), findsOneWidget);

    // Verify that the circularImageSource is displayed.
    final circularImageFinder = find.byType(Image);
    expect(circularImageFinder, findsOneWidget);
    final circularImage = tester.widget<Image>(circularImageFinder);
    expect(circularImage.image, isA<AssetImage>());
    expect(circularImage.image is AssetImage, isTrue);
    expect((circularImage.image as AssetImage).assetName,
        equals("assets/images/medicine.jpg"));

    // Tap on the CircularImageTextMenuItem by tapping on the Container.
    // final containerFinder = find.byType(Container).first;
    // await tester.tap(containerFinder);
    // await tester.pump();

    // Verify that the action function is called.
    // expect(isActionCalled, isTrue);
  });
}
