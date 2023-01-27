import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book_1/subscreens/login_screen.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/BG1.jpeg"),
          fit: BoxFit.cover,
        ),
        color: Color(0xff4E6859),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: Text(
                      'Magic Book',
                      style: GoogleFonts.cinzelDecorative(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC8BD9F),
                      ),
                    ),
                  ),
                  SizedBox(height: 28),
                  Container(
                    decoration: BoxDecoration(),
                    child: Text(
                      "  ຍິນດີຕ້ອນຮັບແອັບພິເຄຊັ່ນຂາຍປຶ້ມໃນ ຮູບແບບE-BOOK ເຊິ່ງເປັນແອັບທີ່ທຸກທ່ານສາມາດອ່ານຢູ່ໃນໂທລະສັບ, ແທັບເລັດ ແລະ ຍັງສາມາດ ເກັບໄວ້ໄດ້ ຕະຫຼອດໂດຍບໍ່ມີກໍານົດ ແລະ ບໍ່ຕ້ອງເສຍຄ່າບໍລິການໃດໆເພີ່ມອີກ! ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        //  fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreens(),
                          ));
                    },
                    child: Ink(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 55),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "START",
                        style: TextStyle(
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Color(0xffC8BD9F),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
