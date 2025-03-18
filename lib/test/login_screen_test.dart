import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';
import 'package:apinext_co/test/screens/login_screen.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  testWidgets('Login Screen Test', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Act
    final emailField = find.byType(TextField).first;
    final passwordField = find.byType(TextField).at(1);
    final loginButton = find.text('Login');
    final registerLink = find.text('Don\'t have an account? Register here.');

    // Input email and password
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(passwordField, 'password123');

    // Verify if the fields are filled
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password123'), findsOneWidget);

    // Tap the login button
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    // Verify if the register link is present
    expect(registerLink, findsOneWidget);
  });

  testWidgets('Login Screen Test 2', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Act
    final emailField = find.byType(TextField).first;
    final passwordField = find.byType(TextField).at(1);
    final loginButton = find.text('Login');
    final registerLink = find.text('Don\'t have an account? Register here.');

    // Input email and password
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(passwordField, 'password123');

    // Verify if the fields are filled
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password123'), findsOneWidget);

    // Tap the login button
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    // Verify if the register link is present
    expect(registerLink, findsOneWidget);
  });
}
