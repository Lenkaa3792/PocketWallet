import 'package:flutter/material.dart';

// SettingsPage widget for settings
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PocketWallet - Settings'), // Title of the AppBar
        backgroundColor: Colors.teal, // Background color of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the body content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
          children: <Widget>[
            Text(
              'Settings', // Main title
              style: TextStyle(
                fontSize: 24, // Font size
                fontWeight: FontWeight.bold, // Font weight
                color: Colors.teal, // Text color
              ),
            ),
            // Add more settings widgets here
          ],
        ),
      ),
    );
  }
}
