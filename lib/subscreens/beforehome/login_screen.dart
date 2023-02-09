import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book_1/screens.dart';
import 'package:magic_book_1/subscreens/beforehome/forgotpass_screen.dart';
import 'package:magic_book_1/subscreens/beforehome/signup_screen.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  bool? _passwordVisible;
  late String user;

  final formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  @override
  void initState() {
    _passwordVisible = false;
    //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff4E6859),
              Color(0xff4E6859),
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 115.0, left: 24.0, right: 24),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'MagicBook',
                        style: GoogleFonts.cinzelDecorative(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    child: Form(
                      key: formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ຊື່ຜູ້ໃຊ້ ຫຼື ອີເມວ"),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(fontSize: 15),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                hintText: "magicbook69@email.com ",
                              ),
                              onChanged: (text) {
                                user = text;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "ກະລຸນາໃສ່ຊື່ຜູ້ໃຊ້ ຫຼື ອີເມວ";
                                } else if (value.length < 3) {
                                  return "ກະລຸນາໃສ່ຊື່ຜູ້ໃຊ້ຫຼາຍກວ່າ 3 ໂຕ";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("ລະຫັດຜ່ານ"),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: !_passwordVisible!,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible!
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color.fromARGB(255, 50, 82, 51)),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible = !_passwordVisible!;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                hintStyle: TextStyle(fontSize: 15),
                                hintText: " ລະຫັດຜ່ານຂອງທ່ານ ",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "ກະລຸນາໃສ່ລະຫັດຜ່ານ";
                                } else if (value.length < 6) {
                                  return "ກະລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກວ່າ 6 ໂຕ";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PassRecoverScreen(),
                                    ));
                              },
                              child: Text(
                                "ລືມລະຫັດຜ່ານ?",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              child: Hero(
                                tag: ['start-btn', 'forgot-btn'],
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Screens(user: user),
                                          ));
                                    }
                                  },
                                  child: Text("ເຂົ້າສູ່ລະບົບ"),
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
                            Row(children: <Widget>[
                              Expanded(
                                child: new Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 20.0),
                                    child: Divider(
                                      thickness: 2,
                                      // color: Colors.black,
                                      // height: 36,
                                    )),
                              ),
                              Text("ຫຼື"),
                              Expanded(
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 20.0, right: 10.0),
                                    child: Divider(
                                      thickness: 2,
                                      // color: Colors.black,
                                      // height: 36,
                                    )),
                              ),
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              child: Hero(
                                tag: 'start-btn',
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUpScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "ສະໝັກສະມາຊິກ",
                                    style: TextStyle(
                                      color: Color(0xff4E6859),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    disabledBackgroundColor:
                                        Color(0xff4E6859).withOpacity(1),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
