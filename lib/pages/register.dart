import 'package:flutter/material.dart';
import 'package:pocket_wallet/pages/dashboard.dart'; // Import the dashboard page
import 'package:pocket_wallet/widgets/widgets.dart'; // Import widgets file for RegistrationForm

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? _selectedCountry;
  bool _agreedToTerms = false;
  final List<String> _countries = ['USA', 'Canada', 'Mexico']; // Example country list

  void _handleCountryChanged(String? newCountry) {
    setState(() {
      _selectedCountry = newCountry;
    });
  }

  void _handleTermsChanged(bool? agreed) {
    setState(() {
      _agreedToTerms = agreed ?? false;
    });
  }

  void _handleNext() {
    // Directly navigate to the DashboardPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()), // Navigate to DashboardPage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.teal, // Set the AppBar color to teal
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your profile",
              style: TextStyle(
                color: Colors.teal, // Text color
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            RegistrationForm(
              countries: _countries,
              selectedCountry: _selectedCountry,
              agreedToTerms: _agreedToTerms,
              onCountryChanged: _handleCountryChanged,
              onTermsChanged: _handleTermsChanged,
              onNext: _handleNext,
            ),
          ],
        ),
      ),
    );
  }
}
