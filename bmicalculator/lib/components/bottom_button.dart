import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.bottomtitle});
  final Function() onTap;
  final String bottomtitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            bottomtitle,
            style: largeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
