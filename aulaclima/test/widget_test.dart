import 'package:flutter_test/flutter_test.dart';

import 'package:aulaclima/main.dart';

void main() {
  testWidgets('mostra a tela inicial do app de clima', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Clima Atual'), findsOneWidget);
    expect(find.text('Cidade: Recife'), findsOneWidget);
    expect(find.text('Buscar temperatura'), findsOneWidget);
    expect(
      find.text('Clique no bot\u00E3o para buscar a temperatura.'),
      findsOneWidget,
    );
  });
}
