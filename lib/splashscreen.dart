import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp_flutter/Questions.dart';

class Splash extends StatefulWidget {
  const Splash ({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => Splash_State();
}



class Splash_State extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3),  () {
      Navigator.push(context,MaterialPageRoute(builder: (Context)=>Questions(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
          title:Text("GeeksforGeeks"),
          backgroundColor:Colors.green
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),

                // Image.network(src)
                child: Image.network("https://gshelper.com/wp-content/uploads/2017/09/Quiz-Logo.png"),

              ),

            ]
        ),
      ),
    );

  }
}
