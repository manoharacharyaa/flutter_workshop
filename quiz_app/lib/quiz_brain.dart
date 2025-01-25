import 'package:quiz_app/questions_model.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('Flutter is developed by Google.', true),
    Question('Dart is the programming language used in Flutter.', true),
    Question('Flutter can only be used to build Android apps.', false),
    Question('Flutter uses a single codebase for iOS and Android.', true),
    Question('Flutter uses JavaScript for its development.', false),
    Question('Hot Reload allows instant UI updates in Flutter.', true),
    Question('Flutter is based on the React framework.', false),
    Question('The "pubspec.yaml" file manages dependencies in Flutter.', true),
    Question('Flutter apps can only be written in Android Studio.', false),
    Question('The "setState" method updates state in a StatefulWidget.', true),
    Question('Flutter was first released in 2017.', true),
    Question('Flutter supports web and desktop applications.', true),
    Question('Flutter uses a declarative approach for building UIs.', true),
    Question('Flutter is primarily used for backend development.', false),
    Question('Flutter apps cannot be tested using automated tests.', false),
    Question('The "StatelessWidget" is immutable in Flutter.', true),
    Question('Flutter is not open-source.', false),
    Question(
      'The "BuildContext" represents a widget\'s location in the tree.',
      true,
    ),
    Question(
      'The "Widget" is the basic building block of a Flutter app.',
      true,
    ),
    Question(
      'The "MaterialApp" widget is used for material design apps.',
      true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
