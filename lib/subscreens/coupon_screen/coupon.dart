import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:magic_book_1/widgets/bookviewlist.dart';

import '../../screens/contact_screen/contact_us.dart';
import '../../screens/contact_screen/feed_screen.dart';

class CouPon extends StatefulWidget {
  const CouPon({super.key});

  @override
  State<CouPon> createState() => _CouPonState();
}

class _CouPonState extends State<CouPon> {
  @override
  Widget build(BuildContext context) {
    var controller;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4E6859),
        centerTitle: true,
        title: Text("ຄູປອງລູ້ນໂຊກ"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            height: 200,
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coupon lucky",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    Icon(
                      LineIcons.questionCircleAlt,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: CupertinoSearchTextField(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      itemColor: CupertinoColors.black,
                      itemSize: 12,
                      controller: controller,
                      onChanged: (value) {},
                      onSubmitted: (value) {},
                      autocorrect: true,
                      placeholder: "ໃສ່ລະຫັດລຸ້ນໂໍໍຊກ",
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => SignUpScreen(),
                      //     ));
                    },
                    child: Text(
                      " Enter Coupons",
                      style: TextStyle(
                        color: Colors.white,
                        // color: Color(0xff4E6859),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Color(0xff4E6859),
                      backgroundColor: Color(0xff4E6859),
                    ),
                  ),
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
