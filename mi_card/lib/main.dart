import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // to avoid screen from going out of screen boundary like top and bottom edge and notches
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //made all the contents came to the center of the screen
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/image.jpg'),
              ),
              Text(
                "Ukesh Aryal",
                style: TextStyle(
                    fontFamily: 'Kalam',
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: Color.fromARGB(255, 178, 179, 223),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: Divider(
                  color: Color.fromARGB(255, 178, 179, 223),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+977 9800000000",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 77, 64),
                        fontFamily: 'Roboto',
                        fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "ukeshreceives@gmail.com",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 77, 64),
                        fontFamily: 'Roboto',
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//margin is for outside the the widget and padding is for inside the widget.