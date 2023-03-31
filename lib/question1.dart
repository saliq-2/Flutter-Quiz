import 'package:flutter/material.dart';
import 'package:quiz/question2.dart';
class question1 extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
return _question1state();
    throw UnimplementedError();
  }

}



class _question1state extends State<question1>
{
  var count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),

      //Background color changer using hex code
     backgroundColor:
    //Colors.orange,
      Color(0xFF4A1C41),




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
                child:Center(child: Text("Who Created C Language ?",
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
                    count+=10;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>question2(count)));
                  }
                  );


                },
                  child: Text("Dennis Ritchie",style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold) ,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>question2(count)));
                  }
                  );



                }, child: Text("Bjarne Stroustrop",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>question2(count)));
                }
                );



              },
                  child: Text("James Gosling",style: TextStyle(
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
        Navigator.push(context, MaterialPageRoute(builder: (context)=>question2(count)));
      }
      );



    },
        child: Text("Guido Von Rossum",
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
  }



}
