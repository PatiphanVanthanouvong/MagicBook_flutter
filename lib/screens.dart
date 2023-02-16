import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:magic_book_1/screens/mybook.dart';

import 'package:magic_book_1/screens/setting/setting_screen.dart';


import 'screens/contact_screen/contactscreen.dart';
import 'screens/followed_screen.dart';
import 'screens/home_screeen.dart';

class Screens extends StatefulWidget {

  String user;
  Screens({ required this.user}): super() ;

  @override
  State<Screens> createState() => _ScreensState(user);
}

class _ScreensState extends State<Screens> {
 
   late String user;
_ScreensState(this.user);
  int _selectedIndex = 0;
  late List<Widget> _widgetOption = <Widget>[
    
    
    HomeScreen(),
     MyBook(),
    FollowedScreen(),
    SettingScreen(user: user),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      
       backgroundColor: Color(0xffEAE9E9),
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.1),
          )
        ]),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: GNav(
            rippleColor: Colors.grey[200]!,
            hoverColor: Colors.grey[50]!,
            gap: 5,
            activeColor: Colors.white,
            iconSize: 15,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Color(0xff4E6859),
            color: Color(0xff4E6859),
            tabs: [
            

            GButton(icon: LineIcons.store, text: 'ຮ້ານໜັງສື'),
            GButton(icon: LineIcons.book, text: 'ຊັ້ນໜັງສື'),
            
            GButton(icon: LineIcons.heart, text: 'ຕິດຕາມ'),
            GButton(icon: CupertinoIcons.gear_alt, text: 'ຕັ້ງຄ່າ'),
            GButton(icon: LineIcons.bell, text: 'ຕິດຕໍ່'),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index){
            setState(() {
              _selectedIndex = index;
            });
          }
          ),
        )),
      ),
    );
  }
}
