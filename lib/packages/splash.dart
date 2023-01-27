
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book_1/subscreens/welcome_screen.dart';


class Splash extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {


    return AnimatedSplashScreen(
      backgroundColor: Color(0xff4E6859),
      duration: 2000,
      splash:  Text(
  'Magic Book',
  style: GoogleFonts.cinzelDecorative(
    textStyle: Theme.of(context).textTheme.headline4,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    
    color: Color(0xFFF9F6EB),
  ),
),
      nextScreen: WelcomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );




    // return AnimatedSplashScreen(  
    //   backgroundColor: Color(0xff4E6859),
    //   duration: 2000,
    //   splash: Container(
        
       
    //     child: Image.asset(
    //       "images/bg1.png",
    //       fit: BoxFit.none,
    //       width: MediaQuery.of(context).size.width*1,
    //     height: MediaQuery.of(context).size.height*1,

          
         
        
          
          
    //     ),
    //   ),
      
    //   nextScreen: WelcomeScreen(),
    //   splashTransition: SplashTransition.fadeTransition,
     
    // );
  }
}