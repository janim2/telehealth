import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/dashboard/presentation/widgets/circular_structure_with_widget_inside.dart';
import 'package:telehealth/src/features/emergency/presentation/views/emergency.dart';
import 'package:telehealth/src/features/health_related/widgets/health_info_card.dart';

void main() {
  testWidgets('EmergencyScreen should render correctly',
      (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(const MaterialApp(home: EmergencyScreen()));

    // Verify that EmergencyScreen title is displayed
    expect(find.text('Emergency'), findsOneWidget);

    // Verify that the two HealthInfoCard widgets are displayed
    expect(find.byType(HealthInfoCard), findsNWidgets(2));

    // Verify that the CircularStructureWithWidgetInside widget is displayed
    expect(find.byType(CircularStructureWithWidgetInside), findsNWidgets(3));

    // Verify that the call Icon is displayed
    expect(find.byIcon(Icons.call), findsOneWidget);
  });
}
