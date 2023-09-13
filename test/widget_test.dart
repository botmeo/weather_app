import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/views/loading_page.dart';

void main() {
  testWidgets('Test LoadingPage', (WidgetTester tester) async {
    await tester.pumpWidget(LoadingPage());
  });
}
