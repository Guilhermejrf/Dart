import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:aulaclima/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('busca temperatura pela interface', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Buscar temperatura'), findsOneWidget);

    await tester.tap(find.text('Buscar temperatura'));
    await tester.pump();

    expect(find.text('Carregando...'), findsOneWidget);

    for (var i = 0; i < 20; i++) {
      await tester.pump(const Duration(seconds: 1));

      if (find.textContaining('\u00B0C').evaluate().isNotEmpty) {
        break;
      }
    }

    expect(find.textContaining('\u00B0C'), findsOneWidget);
  });
}
