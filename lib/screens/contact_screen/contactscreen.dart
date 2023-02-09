import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'feed_screen.dart';
import 'contact_us.dart';

import 'notification.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      // theme: ThemeData(primaryColor: Color(0xff4E6859),),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff4E6859),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15), bottomRight: Radius.circular(15)),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(text: "ການເເຈ້ງເຕືຶອນ",),
                Tab(text: "ຫນ້າຂ່າວ",),
                Tab(text: "ຕິດຕໍ່ພວກເຮົາ",),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Center(
                child: Text(
                        
                        'ຕິດຕໍ່',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cinzelDecorative(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
                   toolbarHeight: 80,
          ),
          body: TabBarView(
             clipBehavior: Clip.hardEdge,
            physics: ScrollPhysics(),
            children: [
              SingleChildScrollView(
                
              
                 child: NotiScreen(),
              
                
              ),
               SingleChildScrollView(
                
              
                 child: FeedScreen(),
              
                
              ),
               SingleChildScrollView(
                
              
                 child: ContactUs(),
              
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
