import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Click');
  }

  @override
  Widget build(BuildContext context) {
    const quistions = [
      'what\'s your favorite colour?',
      'what\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Header"),
        ),
        body: Column(
          children: [
            Question(quistions[_questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
