import 'package:flutter/material.dart';
import 'package:quizapp_flutter/questionmodel.dart';
class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int index=0;
  void nextQus(){
    if(index < Questions.length){
      index++;
    }


  }

  List Questions=[
    Quiz(qus: 'does car have 4 wheels?',ans:true),
    Quiz(qus:' An atom is the smallest particle.',ans: true),
    Quiz(qus:' Butterflies taste things with their wings.',ans: false),
    Quiz(qus: 'Colorblind people can see color',ans:true),
    Quiz(qus:'Golf balls have 300 to 500 dimples',ans:true),
    Quiz(qus: 'The sun is not a star.',ans: false),
    Quiz(qus:' An octopus has one heart.',ans: false),
    Quiz(qus: 'Bats are blind',ans: false),
    Quiz(qus: 'Herbivores eat animals.',ans:false),

  ];
  void ans(bool check){
    print('check');
  }
  void answer(bool check){
    if(check==Questions[index].ans)
    result="correct answer";
    else{
      result='incorrect answer';
    }
  }
  String result="correct answer";
@override
Widget build(BuildContext context) {
  return  Scaffold(
    backgroundColor: Colors.lightGreen,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
              Questions[index].qus),


        ),

        TextButton(onPressed: (){setState(() {
          answer(true);
          nextQus();
        });}, child: Text('true')),
        TextButton(onPressed: (){setState(() {
          answer(false);
          nextQus();

        });}, child: Text('false')),
        Text(result),
      ],
    ),
  );
}
}