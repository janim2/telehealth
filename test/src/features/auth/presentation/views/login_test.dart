import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/src/features/auth/presentation/views/login.dart';
import 'package:telehealth/src/features/auth/presentation/widgets/button.dart';

void main() {
  testWidgets("Login Tab renders correctly", (tester) async {
    // Build app and trigger a frame
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: LoginTab(),
      ),
    ));
    // Verify that the two AuthField widgets are displayed.
    expect(find.text("Email"), findsOneWidget);
    expect(find.text("Password"), findsOneWidget);

    // Verify that the "Forgot your password" text is displayed.
    expect(find.text("Forgot your password"), findsOneWidget);

    // Verify that the MyButton widget is displayed.
    expect(find.byType(MyButton), findsOneWidget);
  });

  // testWidgets('LoginTab button triggers navigation',
  //     (WidgetTester tester) async {
  //   final goRouter = GoRouter(
  //     routes: [
  //       GoRoute(
  //         path: '/',
  //         pageBuilder: (context, state) =>
  //             const MaterialPage(child: LoginTab()),
  //       ),
  //       GoRoute(
  //         path: '/dashboard',
  //         pageBuilder: (context, state) => const MaterialPage(
  //             child: Scaffold(body: Text('Welcome to Tele Health'))),
  //       ),
  //     ],
  //     errorPageBuilder: (context, state) =>
  //         const MaterialPage(child: Scaffold(body: Text('Not Found'))),
  //   );

  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(
  //     MaterialApp.router(
  //       routerDelegate: goRouter.routerDelegate,
  //       routeInformationParser: goRouter.routeInformationParser,
  //     ),
  //   );

  //   // Tap on the login button.
  //   await tester.tap(find.byType(MyButton));
  //   await tester.pumpAndSettle();

  //   // Verify that the navigation to "/dashboard" or appropriate route is triggered.
  //   // Replace the text below with the expected route or verification.
  //   expect(find.text("Welcome to Telehealth"), findsOneWidget);
  // });
}
