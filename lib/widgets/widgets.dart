import 'package:flutter/material.dart';
import 'package:pocket_wallet/pages/dashboard.dart'; // Import DashboardPage

class RegistrationForm extends StatelessWidget {
  final List<String> countries;
  final String? selectedCountry;
  final bool agreedToTerms;
  final Function(String?) onCountryChanged;
  final Function(bool?) onTermsChanged;
  final VoidCallback onNext;

  RegistrationForm({
    required this.countries,
    required this.selectedCountry,
    required this.agreedToTerms,
    required this.onCountryChanged,
    required this.onTermsChanged,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create your profile",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? value) {},
              ),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  'Already an Equity member',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Country',
              labelStyle: TextStyle(color: Colors.teal),
              fillColor: Colors.white,
              border: OutlineInputBorder(),
            ),
            items: countries.map((String country) {
              return DropdownMenuItem<String>(
                value: country,
                child: Text(
                  country,
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: onCountryChanged,
            value: selectedCountry,
          ),
          SizedBox(height: 12),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Account number',
              labelStyle: TextStyle(color: Colors.teal),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 12),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'ID number',
              labelStyle: TextStyle(color: Colors.teal),
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Checkbox(
                value: agreedToTerms,
                onChanged: onTermsChanged,
              ),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  'I agree to the terms and privacy policy',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
            ),
            onPressed: onNext,
            child: Text(
              'Register',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class VerificationCodeEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "We sent a verification code to your Email",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Please enter the code below",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(6, (index) {
              return Container(
                width: 40,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()), // Navigate to DashboardPage
              );
            },
            child: Text(
              'Verify',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final int currentStep;

  ProgressBar({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: currentStep >= 0
                ? Colors.teal
                : Colors.grey,
            height: 4,
          ),
        ),
        SizedBox(width: 7),
        Expanded(
          child: Container(
            color: currentStep >= 1
                ? Colors.teal
                : Colors.grey,
            height: 4,
          ),
        ),
        SizedBox(width: 7),
        Expanded(
          child: Container(
            color: currentStep >= 2
                ? Colors.teal
                : Colors.grey,
            height: 4,
          ),
        ),
      ],
    );
  }
}
