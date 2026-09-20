import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myprofileapp/main.dart';

void main() {
  testWidgets('My Profile page displays profile information',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyProfileApp());

    expect(find.text('My Profile'), findsOneWidget);
    expect(find.text('Diluka'), findsOneWidget);
    expect(find.text('diluka.w@nsbm.ac.lk'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    expect(find.byIcon(Icons.person), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
    expect(find.byIcon(Icons.star), findsOneWidget);
    expect(find.byIcon(Icons.check), findsOneWidget);
  });
}
