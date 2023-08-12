import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_image_text_menu_item.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

void main() {
  testWidgets('MyNavbar should render correctly', (WidgetTester tester) async {
    const String navLabel = 'Health Related Educational Materials';
    const String imageSource = 'assets/images/medicine.jpg';

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: const MyNavbar(
          navLabel: navLabel,
          imageSource: imageSource,
        ),
      ),
    ));

    // Check if icon and CircularImageTextMenuItem are rendered correctly
    expect(find.byType(Icon), findsOneWidget);
    expect(find.byType(CircularImageTextMenuItem), findsOneWidget);

    // Simulate tap on the back button icon
    // await tester.tap(find.byType(GestureDetector));
    // await tester.pumpAndSettle();

    // Add more test cases as needed for other aspects of the widget
  });
}
