import 'package:flutter/material.dart';

// Constant color for teal
const Color tealColor = Color(0xFF008080);

// Widget for section titles
class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Text(
      title, // Title text
      style: TextStyle(
        fontSize: 18, // Font size
        fontWeight: FontWeight.bold, // Font weight
        color: tealColor, // Text color
      ),
    );
  }
}

// Widget for quick action buttons
class QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  QuickActionButton({required this.icon, required this.label}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Minimum size for column
      children: <Widget>[
        Icon(icon, size: 40, color: tealColor), // Icon
        SizedBox(height: 8), // Space between icon and text
        Text(label, style: TextStyle(color: tealColor)), // Label text
      ],
    );
  }
}

// Widget for notification cards
class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  NotificationCard({required this.icon, required this.title, required this.subtitle}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Shadow effect
      child: ListTile(
        leading: Icon(icon, color: tealColor), // Icon
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)), // Title text
        subtitle: Text(subtitle), // Subtitle text
      ),
    );
  }
}

// Widget for info cards
class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;

  InfoCard({required this.title, required this.subtitle, required this.trailing}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Shadow effect
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)), // Title text
        subtitle: Text(subtitle), // Subtitle text
        trailing: Text(trailing), // Trailing text
      ),
    );
  }
}
