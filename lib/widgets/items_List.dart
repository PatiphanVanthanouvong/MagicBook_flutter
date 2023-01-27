import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ItemsShop extends StatelessWidget {


  var textList = [
    "My boss",
    "Magic Shop",
    "ທ້າວນ້ອຍ",
    "my boss",
    "my boss",
  ];

  var nameList = [
    "Anita | Anita98",
    "taiy leo | Nongnouth",
    "ທ້າວນ້ອຍ | 123233",
    "my boss | 231323",
    "my boss | 2421424",
  ];
  var imageList = [
    "images/product6.png",
    "images/product7.png",
    "images/product3.png",
    "images/product2.png",
    "images/product4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            for (int i = 0; i < 5; i++)
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 17),
                    width: 155,
                    height: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ItemScreen()));
                          },
                          child: Container(
                            child: Image.asset(
                              imageList[i],
                              width: 180,
                              height: 220,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              textList[i],
                              style: GoogleFonts.notoSerifLao(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              nameList[i],
                              style: GoogleFonts.notoSerifLao(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 5)),
                            Container(
                              width: 70,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0xff4E6859),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "50.000 ₭",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 5, left: 48),
                              child: Icon(Icons.shopping_cart_outlined),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}



