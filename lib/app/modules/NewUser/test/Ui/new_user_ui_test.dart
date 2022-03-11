import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:house_easy/app/modules/NewUser/view/new_user_view.dart';

void main() {
  group('View New User', () {
    group('logo image', () {
      testWidgets(
        'find logo',
        (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: NewUserView()));

          expect(find.byType(Image), findsWidgets);
          expect(
              find.image(
                  const AssetImage("assets/splash_screen/logo_houseEasy.jpg")),
              findsOneWidget);
        },
      );
    });

    group('find widgets default', () {
      testWidgets('widgets', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: NewUserView(),
        ));

        expect(find.text("Criar conta"), findsOneWidget);
        expect(find.byType(TextFormField), findsWidgets);
        expect(find.byType(TextButton), findsWidgets);
      });
    });
    group('input text e-mail', () {
      testWidgets('inputs email validation', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: NewUserView(),
        ));
        //! TESTAR O RETORNO DO FORMFIELD

        //! VERIFICAR SE ELE DEVOLVE ESTA MENSAGEM - "E-mail digitado incorretamente"
      });
    });
    group('input text password', () {
      testWidgets('inputs password validation', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: NewUserView(),
        ));
        //! TESTAR O RETORNO DO FORMFIELD

        //! VERIFICAR SE ELE DEVOLVE ESTA MENSAGEM - "A senha é muito curta"
      });
    });
    group('input text name', () {
      testWidgets('inputs name validation', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: NewUserView(),
        ));
        //! TESTAR O RETORNO DO FORMFIELD

        //! VERIFICAR SE ELE DEVOLVE ESTA MENSAGEM - "Digite um Nome Valido, Com nome e sobrenome"
      });
    });
  });
}
