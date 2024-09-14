import 'package:flutter/material.dart';

// SendMoneyPage widget for sending money
class SendMoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PocketWallet - Send Money'), // Title of the AppBar
        backgroundColor: Colors.teal, // Background color of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the body content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
          children: <Widget>[
            Text(
              'Send Money', // Main title
              style: TextStyle(
                fontSize: 24, // Font size
                fontWeight: FontWeight.bold, // Font weight
                color: Colors.teal, // Text color
              ),
            ),
            SizedBox(height: 20), // Space between widgets
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount', // Label for the text field
                border: OutlineInputBorder(), // Border style
              ),
              keyboardType: TextInputType.number, // Keyboard type for numbers
            ),
            SizedBox(height: 20), // Space between widgets
            TextField(
              decoration: InputDecoration(
                labelText: 'Recipient', // Label for the text field
                border: OutlineInputBorder(), // Border style
              ),
            ),
            SizedBox(height: 20), // Space between widgets
            ElevatedButton(
              onPressed: () {
                // Handle send money action
              },
              child: Text(
                'Send', // Button text
                style: TextStyle(color: Colors.black), // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
