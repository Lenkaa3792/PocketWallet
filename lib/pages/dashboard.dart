import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.teal, // Set the AppBar color to teal
      ),
      body: Center(
        child: Text(
          'Welcome to Dashboard',
          style: TextStyle(
            color: Colors.teal, // Text color
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
