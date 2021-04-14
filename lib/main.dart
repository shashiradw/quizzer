import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer'),
          backgroundColor: Colors.white30,
        ),
        backgroundColor: Colors.black38,

        body: Column(
          children: [
           TextButton(
               onPressed: (){

               },
               child: Container(
                 color: Colors.white,
                 width: 100.0,
                 height: 50.0,
                 child: Text('True',
                 ),
               ),
           )
          ],
        ),

      ),
    );
  }
}


