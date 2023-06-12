import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  group('Formulir', () { 






    
    testWidgets('ViewPage displays correct data', (WidgetTester tester) async {
    const name = 'Siti Marfungah';
    const birthplace = 'Banjarnegara';
    const birthdate = '2003-04-07';
    const gender = 'Perempuan';
    const phonenumber = '0812012918383';
    const email = 'sitimarfungah@gmail.com';
    const religion = 'Islam';
    const job = 'Apa aja';
    const address = 'Bantul';
    const polyclinic = 'Apaya';

    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: name,
          birthplace: birthplace,
          birthdate: birthdate,
          gender: gender,
          phonenumber: phonenumber,
          email: email,
          religion: religion,
          job: job,
          address: address,
          polyclinic: polyclinic,
        ),
      ),
    );

    expect(find.text('Name: $name'), findsOneWidget);
    expect(find.text('Birth Place: $birthplace'), findsOneWidget);
    expect(find.text('Birth Date: $birthdate'), findsOneWidget);
    expect(find.text('Gender: $gender'), findsOneWidget);
    expect(find.text('Phone Number: $phonenumber'), findsOneWidget);
    expect(find.text('Email: $email'), findsOneWidget);
    expect(find.text('Religion: $religion'), findsOneWidget);
    expect(find.text('Job: $job'), findsOneWidget);
    expect(find.text('Address: $address'), findsOneWidget);
    expect(find.text('Polyclinic: $polyclinic'), findsOneWidget);
  });
  });
}