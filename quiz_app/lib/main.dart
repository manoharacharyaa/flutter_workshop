import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizHome(),
    );
  }
}

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  QuizBrain quizBrain = QuizBrain();

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        print('Correct');
      } else {
        print('Incorrect');
      }
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quix'),
      ),
      body: Column(
        children: [
          Text(quizBrain.getQuestionText()),
          ElevatedButton(
            onPressed: () => checkAnswer(true),
            child: Text('True'),
          ),
          ElevatedButton(
            onPressed: () => checkAnswer(false),
            child: Text('False'),
          ),
        ],
      ),
    );
  }
}
