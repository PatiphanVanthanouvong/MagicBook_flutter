
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:magic_book_1/packages/splash.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
// statusBarColor: Color(0xff4E6859),
statusBarColor: Colors.transparent,
systemNavigationBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );

  }
}
    
      