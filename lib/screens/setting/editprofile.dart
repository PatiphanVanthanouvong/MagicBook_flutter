import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:magic_book_1/screens.dart';

final formKey = GlobalKey<FormState>();

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff4E6859),
        centerTitle: true,
        title: Text("ເເກ້ໄຂໜ້າຜູ້ໃຊ້"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "images/Phoy.jpg",
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
                        LineAwesomeIcons.camera,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ຊື່ຜູ້ໃຊ້"),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(fontSize: 15),
                        filled: true,
                        fillColor: Color(0xffD9D9D9),
                        hintText: " ",
                        prefixIcon: Icon(
                          LineAwesomeIcons.user,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("ອີເມວ"),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(fontSize: 15),
                        filled: true,
                        fillColor: Color(0xffD9D9D9),
                        hintText: " ",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("ຊື່ຜູ້ໃຊ້ທີ່ໃຫ້ຄົນອື່ນເຫັນ"),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          LineAwesomeIcons.user_friends,
                          color: Colors.black,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xffD9D9D9),
                        hintStyle: TextStyle(fontSize: 15),
                        hintText: " ",
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AnimatedButton(
                      height: 50,
                      isFixedHeight: false,
                      buttonTextStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      text: 'ເເກ້ໄຂໜ້າຜູ້ໃຊ້',
                      color: Color(0xff4E6859),
                      pressEvent: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Screens(
                                      user: '',
                                    )));
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
