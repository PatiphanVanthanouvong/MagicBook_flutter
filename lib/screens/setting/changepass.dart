import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:magic_book_1/screens.dart';


final formKey = GlobalKey<FormState>();

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff4E6859),
        centerTitle: true,
        title: Text("ປ່ຽນລະຫັດຜ່ານ"),
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
                        "images/BG1.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 0,
                  //   right: 0,
                  //   child: Container(
                  //     width: 30,
                  //     height: 30,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(100),
                  //       color: Color(0xff4E6859),
                  //     ),
                  //     child: const Icon(
                  //       LineAwesomeIcons.camera,
                  //       color: Colors.white,
                  //       size: 20,
                  //     ),
                  //   ),
                  // )
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
                      Text("ລະຫັດປັດຈຸບັນ"),
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
                        LineAwesomeIcons.user_lock,
                        color: Colors.black,
                        size: 20,
                        ),
                      ),
                      ),
                      
                      SizedBox(
                        height: 5,
                      ),
                      Text("ລະຫັດໃໝ່"),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                               prefixIcon: Icon(
                        Icons.lock_reset,
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
                      Text("ຢືນຢັນລະຫັດ"),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        
                        decoration: InputDecoration(
                               prefixIcon: Icon(
                        LineAwesomeIcons.lock
                        ,
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
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Hero(
                          tag: ['start-btn', 'forgot-btn'],
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Screens(user: '',),
                                    ));
                              }
                            },
                            child: Text(
                              "ຢືນຢັນ",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                              shadowColor: Color(0xff4E6859),
                              backgroundColor: Color(0xff4E6859),
                            ),
                          ),
                        ),
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
