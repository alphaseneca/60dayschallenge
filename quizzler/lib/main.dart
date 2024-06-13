import 'package:flutter/material.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];

  List<String> questions = [
    'The capital of France is Paris.',
    'The square root of 16 is 5.',
    'The chemical symbol for water is H2O.',
    'The Great Wall of China is visible from space with the naked eye.',
    'Python is a type of snake.',
    'The Earth is flat.',
    'Shakespeare wrote "To Kill a Mockingbird".',
    'Humans have 23 pairs of chromosomes.',
    'Venus is the closest planet to the Sun.',
    'The Pacific Ocean is the largest ocean on Earth.',
  ];

  List<bool> answers = [
    true,
    false,
    true,
    true,
    true,
    false,
    true,
    true,
    false,
    false,
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctAnswer = answers[questionNumber];
                if (correctAnswer == true) {
                  print('User got it right!');
                } else {
                  print('User got it wrong!');
                }
                setState(
                  () {
                    questionNumber++;
                  },
                );
                print(questionNumber);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                //The user picked false.
                bool correctAnswer = answers[questionNumber];
                if (correctAnswer == false) {
                  print('User got it right!');
                } else {
                  print('User got it wrong!');
                }
                setState(
                  () {
                    questionNumber++;
                  },
                );
                print(questionNumber);
              },
            ),
          ),
        ),

        //TODO: Add a Row here as your score keeper
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}

// scorekeeper.add(
//                       Icon(
//                         Icons.check,
//                         color: Colors.green,
//                       ),
//                     );
