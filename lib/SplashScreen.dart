import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
class SplashScreen extends StatefulWidget
{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homepage()));
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children:[
          Image.asset('/Users/saliqneyaz/StudioProjects/Quiz/assests/Images/backgd.jpg',
          fit:BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),





          Container(
          child:Center(
              child: Text("QUIZ",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),)),
        ),
    ],
      ),

    );
  }
}
