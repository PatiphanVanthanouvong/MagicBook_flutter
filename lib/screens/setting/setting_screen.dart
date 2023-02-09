import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:magic_book_1/screens/setting/changepass.dart';
import 'package:magic_book_1/screens/setting/editprofile.dart';
import 'package:magic_book_1/subscreens/beforehome/welcome_screen.dart';

import 'aboutus.dart';
import 'coupon_screen/coupon.dart';
import '../../widgets/setting_widget_profile.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading : false,
        backgroundColor: Color(0xff4E6859),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        centerTitle: true,
        title: Text(
          'ຕັ້ງຄ່າ',
          textAlign: TextAlign.center,
          style: GoogleFonts.cinzelDecorative(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 120,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            Container(
              decoration: BoxDecoration(),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "images/BG1.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff4E6859),
                          ),
                          child: const Icon(
                            LineAwesomeIcons.alternate_pencil,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Nong Phoy",
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Customer-New@gmail.com",
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AnimatedButton(
                    width: 140,
                    height: 50,
                    isFixedHeight: false,
                    buttonTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    text: 'ເເກ້ໄຂໜ້າຜູ້ໃຊ້',
                    color: Color(0xff4E6859),
                    pressEvent: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Editprofile()));
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ProfileWidget(
                    title: "ສ່ວນຫຼດລາຄາ",
                    icon: LineAwesomeIcons.wavy_money_bill,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CouPon()),
                      );
                    },
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ProfileWidget(
                    title: "ປ່ຽນລະຫັດຜ່ານ",
                    icon: LineAwesomeIcons.lock,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangePass()),
                      );
                    },
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ProfileWidget(
                    title: "ກ່ຽວກັບພວກເຮົາ",
                    icon: LineAwesomeIcons.info_circle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUs()),
                      );
                    },
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ProfileWidget(
                    title: "ອອກຈາກລະບົບ",
                    icon: LineAwesomeIcons.alternate_sign_out,
                    textColor: Colors.redAccent,
                    endIcon: false,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
