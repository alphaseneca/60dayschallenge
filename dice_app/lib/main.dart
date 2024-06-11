import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // const DicePage({super.key});
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicechange() {
    // This will be called when the button is pressed.
    setState(() {
      leftDiceNumber = 1 + Random().nextInt(6);
      print(leftDiceNumber);
      rightDiceNumber = 1 + Random().nextInt(6);
      print(rightDiceNumber);
    }); // This will call the build method.
  }

  @override
  Widget build(BuildContext context) {
    // int leftDiceNumber = 5;
    // int rightDiceNumber = 1;

    // Initialized the variable inside the build method. but at production level, it should be outside.
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                print("The left button got pressed.");
                dicechange();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                print("The right button got pressed.");
                dicechange();
              },
            ),
          ),
        ],
      ),
    );
  }
}
