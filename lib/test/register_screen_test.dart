import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';
import 'package:apinext_co/test/screens/register_screen.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  testWidgets('Register Screen Test', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(MaterialApp(home: RegisterScreen()));

    // Act
    final emailField = find.byType(TextField).first;
    final passwordField = find.byType(TextField).at(1);
    final registerButton = find.text('Register');
    final loginLink = find.text('Already have an account? Login here.');

    // Input email and password
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(passwordField, 'password123');

    // Verify if the fields are filled
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password123'), findsOneWidget);

    // Tap the register button
    await tester.tap(registerButton);
    await tester.pumpAndSettle();

    // Verify if the login link is present
    expect(loginLink, findsOneWidget);
  });
}

Future<void> registerScreenTest() async {
  testWidgets('Register Screen Test', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(MaterialApp(home: RegisterScreen()));

    // Act
    final emailField = find.byType(TextField).first;
    final passwordField = find.byType(TextField).at(1);
    final registerButton = find.text('Register');
    final loginLink = find.text('Already have an account? Login here.');

    // Input email and password
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(passwordField, 'password123');

    // Verify if the fields are filled
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password123'), findsOneWidget);

    // Tap the register button
    await tester.tap(registerButton);
    await tester.pumpAndSettle();

    // Verify if the login link is present
    expect(loginLink, findsOneWidget);
  });
}
