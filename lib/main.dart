import 'package:flutter/material.dart';
import 'package:quizzer/Quiz_brain.dart';
void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List <Icon> scoreKeeper=[];
  int qNumber=0;
  bool reachedEnd=false;
  QuizBrain quizBrain=QuizBrain();



  @override
  Widget build(BuildContext context) {

    void checkCorrectAnswer(bool clickedButton){
      bool correctAnswer=quizBrain.getAnswer(qNumber);
      if(correctAnswer==clickedButton){
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      }else{
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
    }

    void markQuesComplete(bool buttonType){
      if(qNumber == quizBrain.lengthQuizList()-1 && !reachedEnd){
        checkCorrectAnswer(buttonType);
        reachedEnd=true;
      }
      if(qNumber < quizBrain.lengthQuizList()-1){
        checkCorrectAnswer(buttonType);
        qNumber++;
      }

    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer'),
          backgroundColor: Colors.white30,
        ),
        backgroundColor: Colors.black38,
        
        body: Center(
          child: Column(
            children: [
              Expanded(
                   flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    alignment: Alignment.center,
                    child: Text(quizBrain.getQuestionText(qNumber),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                //True Btn
              Expanded(
                 flex: 1,
                 child: TextButton(
                     onPressed: qNumber==quizBrain.lengthQuizList() ? null :  (){
                       setState(() {
                         markQuesComplete(true);
                       });
                     },
                     child: Container(
                       margin: EdgeInsets.only(bottom: 40.0),
                       alignment: Alignment.center,
                       color: Colors.green,
                       width: 250.0,
                       child: Text('True',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 20.0,
                         ),
                       ),
                     ),
                 ),
               ),
              //False btn
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: qNumber==quizBrain.lengthQuizList() ? null : (){
                    setState(() {
                      markQuesComplete(false);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 40.0),
                    alignment: Alignment.center,
                    color: Colors.red,
                    width: 250.0,
                    child: Text('False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


