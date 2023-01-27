import 'package:flutter/material.dart';

import '../screens.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      const EdgeInsets.only(top: 30.0, left: 24.0, right: 24),
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ຊື່ຜູ້ໃຊ້ "),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(fontSize: 15),
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
                          TextField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
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
                          TextField(
                              obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
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
                          SizedBox(
                            height: 5,
                          ),
                          Text("ອີເມວ"),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(fontSize: 15),
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              hintText: "nongnouth@email.com ",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("ຊື່ຜູ້ໃຊ້ທີ່ໃຫ້ຄົນອື່ນເຫັນ"),
                          SizedBox(
                            height: 5,
                          ),
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
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Screens(),
                                    ));
                              },
                              child: Text("ເຂົ້າສູ່ລະບົບ"),
                              style: ElevatedButton.styleFrom(
                                shadowColor: Color(0xff4E6859),
                                backgroundColor: Color(0xff4E6859),
                              ),
                            ),
                          ),
                        ]),
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
