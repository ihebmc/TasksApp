import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:advanced_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App launches successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MyApp());

    // Verify that app launches without errors
    expect(find.text('Home'), findsOneWidget);
  });
}
