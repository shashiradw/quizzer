import 'Question.dart';
class QuizBrain{

  int _qNumber=0;

List <Question> _ques=[
  Question('HTML is a Programming language', false),
  Question('Flutter maintained by Google', true),
  Question('Flutter written in C,C++ and Dart', true)
  ];


  int lengthQuizList(){
    return _ques.length;
  }

  void nextQuestion(){
    if(_qNumber<_ques.length-1){
      _qNumber++;
    }
  }

  String getQuestionText(int qNumber){
    return _ques[qNumber].questionText;
  }

  bool getAnswer(int qNumber){
    return _ques[qNumber].questionAnswer;
  }





}