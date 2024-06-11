import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playsound({required int number}) {
    //function to play sound
    final player = AudioPlayer(); //initialized the player
    player.play(
        AssetSource('note$number.wav')); //play the sound when button is pressed
  }

  Expanded buildkey({required int soundnumber, required color}) {
    // Created a function with the return type as widget/expanded
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      foregroundColor: Colors.black87,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Expanded(
      child: TextButton(
        style: flatButtonStyle,
        child: Container(
          color: color,
        ),
        onPressed: () {
          playsound(number: soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildkey(soundnumber: 1, color: Colors.red),
              buildkey(soundnumber: 2, color: Colors.orange),
              buildkey(soundnumber: 3, color: Colors.yellow),
              buildkey(soundnumber: 4, color: Colors.green),
              buildkey(soundnumber: 5, color: Colors.teal),
              buildkey(soundnumber: 6, color: Colors.blue),
              buildkey(soundnumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
