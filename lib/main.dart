import 'package:flutter/material.dart';
import 'package:pocket_wallet/pages/register.dart'; // Import the RegisterPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Wallet',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Set the primary color to teal
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RegisterPage(), // Set the initial page to RegisterPage
    );
  }
}
