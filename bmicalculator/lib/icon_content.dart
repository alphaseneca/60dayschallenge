import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  static const labeltextstyle =
      TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

  const IconContent({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(
          label,
          style: labeltextstyle,
        ),
      ],
    );
  }
}
