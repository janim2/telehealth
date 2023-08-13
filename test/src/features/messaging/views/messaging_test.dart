import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/health_related/widgets/my_nav_bar.dart';
import 'package:telehealth/src/features/messaging/views/messaging.dart';

void main() {
  testWidgets('MessagingScreen has a MyNavbar widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MessagingScreen()));

    expect(find.byType(MyNavbar), findsOneWidget);
  });

  testWidgets('MessagingScreen displays chat messages',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MessagingScreen()));

    for (final message in chatMessages) {
      expect(find.text(message), findsOneWidget);
    }
  });

  testWidgets('MessagingScreen displays correct sender for each chat message',
      (WidgetTester tester) async {
    // await tester.pumpWidget(const MaterialApp(home: MessagingScreen()));

    // for (int i = 0; i < chatMessages.length; i++) {
    //   final isMe = i % 2 == 0;
    //   final alignment = isMe ? Alignment.centerRight : Alignment.centerLeft;

    //   final chatMessageFinder = find.descendant(
    //     of: find.byType(ChatMessage),
    //     matching: find.byWidgetPredicate((widget) => widget is Container && widget.alignment == alignment),
    //   );

    //   expect(chatMessageFinder, findsOneWidget);
    // }
  });

  // Add more test cases as needed for different functionality
}
