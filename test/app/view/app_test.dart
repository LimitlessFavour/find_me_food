import 'package:find_me_food_bloc/app/app.dart';
import 'package:find_me_food_bloc/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(
        const App(flavorConfig: FlavorConfig(name: 'FMF Staging')),
      );
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
