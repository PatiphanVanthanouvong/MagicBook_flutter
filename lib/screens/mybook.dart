import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBook extends StatefulWidget {
  @override
  State<MyBook> createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  TextEditingController controller =
      TextEditingController(text: " ຄົ້ນຫາໜັງສືຂອງທ່ານ");
  var pNames = [
    "IKAGAI",
    "G928492849494",
    "book3",
    "book1",
  ];

  var pSizes = [
    "J.K rolling",
    "Prayut",
    "IKAGAI",
    "book3",
    "book1",
  ];

  var nameList = [
    "KORAWIA | KORAWIA",
    "ດວງຈໍາປາ| Nongnouth",
    "KORAWIA | KORAWIA",
    "KORAWIA | KORAWIA",
    "KORAWIA | KORAWIA",
  ];
  var imageList = [
    "product6",
    "product7",
    "product2",
    "product1",
    "product3",
  ];

  var priceList = [
    "150.000 ₭",
    "95.000 ₭",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xff4E6859),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'ຊັ້ນໜັງສື',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cinzelDecorative(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 15),
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
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "ໜັງສືທັງໝົດ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                children: [
                  for (int i = 0; i < 5; i++)
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 15, right: 5),
                            width: 90,
                            height: 130,
                            child: Image.asset(
                              "images/${imageList[i]}.png",
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2)),
                          ),
                          Container(
                            height: 130,
                            width: 220,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  color: Colors.white.withOpacity(0.2),
                                  child: Text(
                                    nameList[i],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3, vertical: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "ນາມປາກກາ:",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            child: Text(
                                              pSizes[i],
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "ສໍານັກພິມ:",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            child: Text(
                                              pSizes[i],
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),

                                      //         Container(
                                      //     width: 70,
                                      //     height: 25,
                                      //     decoration: BoxDecoration(
                                      //       color: Color(0xff4E6859),
                                      //       borderRadius: BorderRadius.circular(8),
                                      //     ),
                                      //     child: Center(
                                      //       child: Text(
                                      //         priceList[i],
                                      //         style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontSize: 12,
                                      //             fontWeight: FontWeight.bold),
                                      //       ),
                                      //     ),
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              height: 130,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.more_horiz),
                                ],
                              )),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
