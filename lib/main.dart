import 'package:flutter/material.dart';

void main() => runApp(MyApp());

int i = 0;

void answerQuestion( int qnsNum) {
  print('$qnsNum is answered');
  i++;
  print(i);
}
class MyApp extends StatelessWidget {
  final questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
      ];

  
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Column(children: [
          Text(questions[i]),
          RaisedButton(
            child: Text('Answer 1'), 
            onPressed: () => answerQuestion(0),
          ),
          RaisedButton(
            child: Text('Answer 2'), 
            onPressed: () => answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Answer 3'), 
            onPressed: () => answerQuestion(2),
          ),
        ]),
      ),
    );
  }
}