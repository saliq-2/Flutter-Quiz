import 'package:flutter/material.dart';
import 'package:quiz/score_sheet.dart';
class question5 extends StatefulWidget
{
  int user_score;
  question5(this.user_score)
  {

  }

  @override
  State<StatefulWidget> createState() {
    return question5_state();
    throw UnimplementedError();
  }

}
class question5_state extends State<question5>
{
  int user=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A1C41),
      // appBar: AppBar(
      //   title: Text("QUIZ"),
      // ),
      body: Container(
        // decoration:BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Color(0xFF701ebd),
        //       Color(0xFF873bcc),
        //       Color(0xFFfe4a97),
        //       Color(0xFFe17763),
        //       Color(0xFF68998c),
        //     ],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   ),
        // ),
        // height: 1000,
        // width: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 90),
                //   width:200,
                //height: 100,
                child:Center(child: Text("When was Microsoft Founded?",
                  style: TextStyle(

                    //Changing the font
                    // fontFamily: "DancingScript-Bold",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
            ),

//      FIRST BUTTON

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 75,
                child: ElevatedButton(onPressed: (){

                  //This is used to increment the score
                  //  print("Clicked");
                  setState((){
                    user=widget.user_score;
                    user+=10;
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>score_sheet(user)));
                  }
                  );


                },
                  child: Text("4 April 1975 ",style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold) ,),
                  style: ElevatedButton.styleFrom(
                    //This sets the initial color of the button to Grey
                      primary: Colors.cyanAccent,
                      //Whenever the button is pressed the onPrimary changes its color

                      onPrimary: Colors.purple,

                      shadowColor: Colors.black,

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),

                          side: BorderSide(
                            color: Colors.black,
                          )
                      )

                  ),
                ),
              ),
            ),

            //SECOND BUTTON


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 75,
                child: ElevatedButton(onPressed: (){

                  setState((){
                    user=widget.user_score;
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>score_sheet(user)));
                  }
                  );



                }, child: Text("10 April 1976",
                  style: TextStyle(fontSize: 20,color: Colors.white),

                ),



                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2971AC),
                      //onPrimary: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
            ),



            //    THIRD BUTTON


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 75,
                  child: ElevatedButton(onPressed: (){

                    setState((){
                      user=widget.user_score;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>score_sheet(user)));
                    }
                    );



                  },
                    child: Text("10 January 1963",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                    ),),
                    style: ElevatedButton.styleFrom(

                        primary: Color(0xFFF7AA2A),

                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  )

              ),
            ),


            // FOURTH BUTTON



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height:75,
                  child: ElevatedButton(onPressed: (){



                    setState((){
                      user=widget.user_score;
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>score_sheet(user)));
                    }
                    );



                  },
                    child: Text("11 March 1970 ",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFD6556B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),



                  )
              ),
            )





          ],
        ),
      ),









    );
    throw UnimplementedError();
  }

}

