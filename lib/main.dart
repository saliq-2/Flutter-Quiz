import 'package:flutter/material.dart';
import 'package:quiz/SplashScreen.dart';
import 'package:quiz/question1.dart';
void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App",
      theme: ThemeData(
        //primarySwatch: Colors.yellow,

        backgroundColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }

}


class homepage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _homepagestate();

  }


}
class _homepagestate extends State<homepage>
{
 // int score_user=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Quiz"),
      //
      //
      // ),

      body:Stack(
        children:[
          Image.asset('/Users/saliqneyaz/StudioProjects/Quiz/assests/Images/backgd.jpg',
          fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),


          Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(


                child: Text("Quiz",
                style: TextStyle(
                  fontSize: 100,
                  fontFamily: "GloriaHallelujah-Regular",
                ),),
              ),
              SizedBox(
                height: 70,
                width: 80,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>question1()));
    }, child: Text("Play",style: TextStyle(fontSize: 20),),
                  style:ElevatedButton.styleFrom(

                    primary: Colors.black,
                  //  onPrimary: Colors.yellow,



                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    )
                  ) ,
        ),
              ),
            ],
          ),

    ),

    ],
      ),
    );
  }

}


