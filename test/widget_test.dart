import 'package:flutter/material.dart'; // Remove if not needed
import 'package:flutter_test/flutter_test.dart';
import 'package:pocket_wallet/pages/login.dart'; // Ensure this matches the actual path

void main() {
  testWidgets('LoginPage has a title and login button', (WidgetTester tester) async {
    // Build the LoginPage widget
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
    ));

    // Verify that the title is present
    expect(find.text('Login'), findsOneWidget);

    // Verify that the login button is present
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
