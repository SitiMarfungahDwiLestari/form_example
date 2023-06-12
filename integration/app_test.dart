import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/main.dart' as app;
import 'package:form_example/view_page.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('form page dan view page', () {
    testWidgets('mengisi halaman formpage', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(0), 'Siti Marfungah');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(1), 'Banjarnegara');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(2), '07-04-2003');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(3), 'Perempuan');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(4), '0812012918383');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(5), 'sitimarfungah@gmail.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(6), 'Islam');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(7), 'Apa aja');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(8), 'Bantul');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextField).at(9), 'Apaya');
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(ElevatedButton));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 2));
      expect(find.byType(ViewPage), findsOneWidget);
    });
  });
}

