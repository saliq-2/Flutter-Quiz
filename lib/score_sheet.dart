import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
class score_sheet extends StatefulWidget
{
  int my_score;
  score_sheet(this.my_score)
  {

  }

  @override
  State<StatefulWidget> createState() {
return score_sheet_state();
  }

}
class score_sheet_state extends State<score_sheet>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(child: Text("Your Score is: "+widget.my_score.toString(),style: TextStyle(fontSize: 40),)),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
              }, child: Text("Play Again"))
            ],
          ),
        ),
      ),
    );

  }



}
