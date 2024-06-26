import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
