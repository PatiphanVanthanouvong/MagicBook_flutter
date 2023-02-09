import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:magic_book_1/subscreens/beforehome/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0xff4E6859),
      duration: 2000,
      splash: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                   width: 300,
                      height: 300,
                child: Image.asset(
                        "images/real.png",
                        fit: BoxFit.cover,
                  
              
                      ),
              ),
           
            ],
          ),
        ),
      ),
      nextScreen: WelcomeScreen(),
      splashIconSize: 300,
      
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );

  
  }
}
