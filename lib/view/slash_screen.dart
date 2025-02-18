import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}


class _SlashScreenState extends State<SlashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    }  );
  }


  @override
  Widget build(BuildContext context) {

    final height =MediaQuery.sizeOf(context).height *1;
    final width =MediaQuery.sizeOf(context).width *1;
    return  Scaffold(

       body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              'images/splash_pic.jpg',
               fit: BoxFit.cover,
               height: height*.7,

              ),
            SizedBox(height: 15,),
             Text('TOP HEADLINES',style: GoogleFonts.anton(letterSpacing: .6,color: Colors.grey.shade700),) ,
             
            SizedBox(height: 35,), 
             SpinKitChasingDots(
              color: Colors.amber,
              size: 50,
             )
            
          ],
        ),

       ),
    );
  }
}