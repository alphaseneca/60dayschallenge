import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  // added the final code here as the colour will not change in future
  final Widget cardChild;
  ReusableCard({required this.colour, required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10.0),
        color: colour,
      ),
    );
  }
}
