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
        
        body: Center(
          child: Column(
            children: [
              Expanded(
                   flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    alignment: Alignment.center,
                    child: Text('Google was Originally Called "Backrub"',
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
                     onPressed: (){
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
                  onPressed: (){
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
                children: [
                  Icon(
                    Icons.check,
                    color:Colors.green,
                  ),
                  Icon(
                    Icons.close,
                    color:Colors.red,
                  ),
                  Icon(
                    Icons.close,
                    color:Colors.red,
                  ),
                  Icon(
                    Icons.close,
                    color:Colors.red,
                  ),
                  Icon(
                    Icons.close,
                    color:Colors.red,
                  ),
                  Icon(
                    Icons.close,
                    color:Colors.red,
                  ),
                ],
              ),


            ],
          ),
        ),

      ),
    );
  }
}


