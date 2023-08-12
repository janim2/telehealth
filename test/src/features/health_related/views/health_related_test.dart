import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/health_related/views/health_related.dart';
import 'package:telehealth/src/features/health_related/widgets/health_info_card.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';

void main() {
  testWidgets('HealthRelatedInfoScreen should render correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HealthRelatedInfoScreen(),
    ));

    expect(find.text('Health Related Educational Materials'), findsOneWidget);
    expect(find.byType(MyNavbar), findsOneWidget);

    // Test HealthInfoCard widgets
    expect(find.byType(HealthInfoCard), findsNWidgets(6));

    // Test navigation action
    // await tester.tap(find.text('Healthy Eating and Nutrition'));
    // await tester.pumpAndSettle(); // Wait for navigation to complete

    // Add similar tests for other HealthInfoCard actions
  });
}
