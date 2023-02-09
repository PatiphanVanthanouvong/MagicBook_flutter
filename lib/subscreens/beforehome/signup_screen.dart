import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:magic_book_1/subscreens/beforehome/login_screen.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? _passwordVisible;

  final formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  @override
  void initState() {
    _passwordVisible = false;
    //set the initial value of text field
    super.initState();
  }

  String? gender;
  String? radioButtonItem;
  int id = 1;
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
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 24.0, right: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            'ສະໝັກສະມາຊິກ',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 11,
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
                        vertical: 20, horizontal: 30),
                    child: Form(
                      key: formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ຊື່ຜູ້ໃຊ້ "),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _usernameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "ກະລຸນາໃສ່ລະຫັດຜ່ານຊື່ຜູ້ໃຊ້ ";
                                } else if (value.length < 3) {
                                  return "ກະລຸນາໃສ່ຊື່ຜູ້ໃຊ້ຫຼາຍກວ່າ 3 ໂຕ";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(fontSize: 14),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                hintText: "ThiThiKitty",
                              ),
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
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "ກະລຸນາໃສ່ລະຫັດຜ່ານ";
                                }
                                return null;
                              },
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
                                hintStyle: TextStyle(fontSize: 15),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                hintText: "8 ໂຕຂື້ນໄປ",
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("ຍືນຍັນລະຫັດຜ່ານ"),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              obscureText: !_passwordVisible!,
                              validator: (
                                _passwordController,
                              ) {
                                if (_passwordController!.isEmpty) {
                                  return "ກະລຸນາໃສ່ລະຫັດຜ່ານຍືນຍັນ";
                                }
                                return null;
                              },
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
                                hintStyle: TextStyle(fontSize: 15),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                hintText: "ຍືນຍັນລະຫັດຜ່ານ",
                              ),
                            ),
                            Text("ອີເມວ"),
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
                                hintText: "magicbook69@email.com ",
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("ຊື່ຜູ້ໃຊ້ທີ່ໃຫ້ຄົນອື່ນເຫັນ"),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                hintStyle: TextStyle(fontSize: 15),
                                hintText: "nongphoy_jubu_jubu",
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Radio(
                                    activeColor: Color(0xff4E6859),
                                    value: 1,
                                    groupValue: id,
                                    onChanged: (val) {
                                      setState(() {
                                        radioButtonItem = 'ຊາຍ';
                                        id = 1;
                                      });
                                    },
                                  ),
                                  Text(
                                    'ຊາຍ',
                                    style: new TextStyle(fontSize: 15.0),
                                  ),
                                  Radio(
                                    activeColor: Color(0xff4E6859),
                                    value: 2,
                                    groupValue: id,
                                    onChanged: (val) {
                                      setState(() {
                                        radioButtonItem = 'ຍິງ';
                                        id = 2;
                                      });
                                    },
                                  ),
                                  Text(
                                    'ຍິງ',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AnimatedButton(
                              borderRadius: BorderRadius.circular(5),
                              text: 'ສະໝັກສະມາຊິກ',
                              color: Color(0xff4E6859),
                              pressEvent: () {
                                AwesomeDialog(
                                  btnOkColor: Color(0xff4E6859),
                                  barrierColor: Color(0xff4E6859),
                                  context: context,
                                  animType: AnimType.leftSlide,
                                  headerAnimationLoop: true,
                                  dialogType: DialogType.success,
                                  showCloseIcon: true,
                                  title: 'ສະໝັກສະມາຊິກ',
                                  desc: 'ເຂົ້າສູ່ລະບົບ',
                                  btnOkOnPress: () {
                                    if (formKey.currentState!.validate()) {
                                      if (formKey.currentState!.validate()) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreens(),
                                            ));
                                      }
                                    }
                                  },
                                  btnOkIcon: Icons.check_circle,
                                  onDismissCallback: (type) {},
                                ).show();
                              },
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
