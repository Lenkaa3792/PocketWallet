import 'package:flutter/material.dart';

// PayBillsPage widget for paying bills
class PayBillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PocketWallet - Pay Bills'), // Title of the AppBar
        backgroundColor: Colors.teal, // Background color of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the body content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
          children: <Widget>[
            Text(
              'Pay Bills', // Main title
              style: TextStyle(
                fontSize: 24, // Font size
                fontWeight: FontWeight.bold, // Font weight
                color: Colors.teal, // Text color
              ),
            ),
            SizedBox(height: 20), // Space between widgets
            TextField(
              decoration: InputDecoration(
                labelText: 'Biller', // Label for the text field
                border: OutlineInputBorder(), // Border style
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
            ElevatedButton(
              onPressed: () {
                // Handle pay bills action
              },
              child: Text(
                'Pay', // Button text
                style: TextStyle(color: Colors.black), // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
