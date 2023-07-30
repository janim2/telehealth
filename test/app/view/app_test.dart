import 'package:flutter_test/flutter_test.dart';
import 'package:telehealth/app/view/app.dart';
import 'package:telehealth/src/features/splash/presentation/views/splash_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders SplashScreen', (tester) async {
      //defines the test you wish to perform
      await tester
          .pumpWidget(const App()); //builds and renders the proposed widget
      expect(find.byType(SplashScreen), findsOneWidget);
    });
  });
}
