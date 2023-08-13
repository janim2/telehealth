import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/video_consultation/views/video_chat.dart';
import 'package:telehealth/src/features/video_consultation/widgets/circular_with_image.dart';

void main() {
  testWidgets('VideoConferenceScreen displays correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: VideoConferenceScreen(
          drName: "Dr. Alex Konadu", // Provide a valid doctor name
        ),
      ),
    );

    // Verify that CircularWithImage widgets are rendered
    final circularWithImageFinder = find.byType(CircularWithImage);
    expect(circularWithImageFinder,
        findsNWidgets(4)); // There are three CircularWithImage widgets

    // Verify that tapping the back button triggers router.pop()
    // await tester.tap(circularWithImageFinder.first);
    // final router =
    //     GoRouter.of(tester.element(find.byType(VideoConferenceScreen)));
    // expect(router.canPop(), isTrue);

    // Verify that tapping the cancel button triggers router.pop()
    // await tester.tap(circularWithImageFinder.last);
    // expect(router.canPop(), isTrue);
  });
}
