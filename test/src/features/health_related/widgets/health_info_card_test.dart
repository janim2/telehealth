import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/health_related/widgets/health_info_card.dart';

void main() {
  testWidgets('HealthInfoCard should render correctly',
      (WidgetTester tester) async {
    const String imageLink = 'assets/images/food.jpg';
    const String textonCard = 'Healthy Eating and Nutrition';

    await tester.pumpWidget(MaterialApp(
      home: HealthInfoCard(
        imageLink: imageLink,
        textonCard: textonCard,
      ),
    ));

    // Check if text is rendered correctly
    expect(find.text(textonCard), findsOneWidget);

    // Check if image is rendered correctly
    expect(find.byType(Image), findsOneWidget);
    // expect(find.byWidgetPredicate((widget) => widget is Image && widget.image.assetName == imageLink), findsOneWidget);

    // Simulate tap and check if action is triggered
    // await tester.tap(find.byType(GestureDetector));
    // await tester.pumpAndSettle(); // Wait for the tap animation to complete

    // Add more test cases as needed for other aspects of the widget
  });
}
