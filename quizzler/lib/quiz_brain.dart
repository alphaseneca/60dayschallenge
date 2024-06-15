import 'package:rflutter_alert/rflutter_alert.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionsbank = [
    Question(
        questionText: 'The capital of France is Paris.', questionAnswer: true),
    Question(
        questionText: 'The square root of 16 is 5.', questionAnswer: false),
    Question(
        questionText: 'The chemical symbol for water is H2O.',
        questionAnswer: true),
    Question(
        questionText:
            'The Great Wall of China is visible from space with the naked eye.',
        questionAnswer: true),
    Question(
        questionText: 'Python is a type of snake in programming.',
        questionAnswer: true),
    Question(
        questionText: 'The Earth is flat on the equator.',
        questionAnswer: true),
    Question(
        questionText: 'Shakespeare wrote "To Kill a Mockingbird".',
        questionAnswer: true),
    Question(
        questionText: 'Humans have 23 pairs of chromosomes.',
        questionAnswer: false),
    Question(
        questionText: 'Venus is the closest planet to the Sun.',
        questionAnswer: false),
    Question(
        questionText: 'The Pacific Ocean is the largest ocean on Earth.',
        questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionsbank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsbank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsbank[_questionNumber].questionAnswer;
  }

  bool isFinished(context) {
    print(_questionNumber);
    if (_questionNumber == _questionsbank.length - 1) {
      Alert(
        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.',
      ).show();
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
