import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import 'suggestbook.dart';

class PriceBook extends StatefulWidget {
  @override
  State<PriceBook> createState() => _PriceBookState();
}

class _PriceBookState extends State<PriceBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: items3.length,
        separatorBuilder: (context, _) => SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) => InkWell(
          child: Container(
            decoration: BoxDecoration(
              // color: items == 1
              //     ? Colors.amberAccent
              //     : const Color(0xFFF2F8FF),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            width: 160,
            height: 70,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Pricebooksheet(context, index);
                  },
                  child: Container(
                    child: Image.asset(
                      items3[index].imageset,
                      width: 180,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    // child: Text(
                    //   items.title,
                    //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    // ),
                    child: Text(
                      items3[index].title,
                      style: GoogleFonts.notoSerifLao(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      items3[index].subtitle,
                      style: GoogleFonts.notoSerifLao(
                        textStyle: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 0, right: 0)),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xff4E6859),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            items3[index].price,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(Icons.shopping_cart_outlined),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Future<String?> Pricebooksheet(BuildContext context, int index) {
    return showModalBottomSheet<String>(
      enableDrag: true,
      isScrollControlled: true,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      // ),
      context: context,
      builder: (BuildContext context) {
        return ListView(
          children: [
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                        icon: Icon(
                          LineIcons.heart,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Text(
                    items3[index].title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "By",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    items3[index].subtitle,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Container(
                    child: Image.asset(
                      items3[index].imageset,
                      width: 200,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        items3[index].author,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        items3[index].categ,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, //*
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.black.withOpacity(0.2),
              padding: EdgeInsets.all(10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          child: OutlinedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => Screens(),
                              //     ));
                            },
                            child: Text(
                              "????????????????????????????????????",
                              style: TextStyle(
                                color: Color(0xff4E6859),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Color(0xff4E6859),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
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
                              items3[index].price,
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
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          initialRating: 2.5,
                          minRating: 0.5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemBuilder: (context, _) => Icon(
                            LineIcons.heartAlt,
                            color: Colors.redAccent,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(width: 5),
                        Text("(2688)"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              LineIcons.shoppingBag,
                              color: Color(0xff4E6859),
                              size: 35,
                            ),
                            Text(
                              "Wish",
                              style: TextStyle(
                                color: Color(0xff4E6859),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              LineIcons.shoppingCart,
                              color: Color(0xff4E6859),
                              size: 35,
                            ),
                            Text(
                              "Follow",
                              style: TextStyle(
                                color: Color(0xff4E6859),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              LineIcons.alternateShareSquare,
                              color: Color(0xff4E6859),
                              size: 35,
                            ),
                            Text(
                              "Share",
                              style: TextStyle(
                                color: Color(0xff4E6859),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "??????????????????????????????????????????????????? ????????? ?????????????????????????????? ????????????????????????????????????????????? ????????????????????????????????? ????????? ???????????????????????????????????????????????????????????????",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E6859),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "?????????????????? ?????????????????????????????????????????????????????? ????????? ???????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????...",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E6859),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Text(
                      '??????????????????',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '???????????????????????????',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'pdf, epub (?????????????????????)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '????????????????????????????????????',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '10 ??????????????? 2023',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '???????????????????????????',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '300?????????',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '??????????????????????????????????????????????????????????????????',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '80.000 ???',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 230,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '????????????????????????????????????????????????????????????????????????',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SuggestBook(),
                  ],
                )),
          ],
        );
      },
    );
  }
}

class Bookt {
  final String title;
  final String subtitle;
  final String imageset;
  final String price;
  final String author;
  final String categ;
  Bookt({
    required this.title,
    required this.subtitle,
    required this.imageset,
    required this.price,
    required this.author,
    required this.categ,
  });
}

List<Bookt> items3 = [
  Bookt(
    title: 'BTS Marketing ???????????????????????????????????????????????????',
    subtitle: '????????????????????????????????? | ?????????????????????????????????',
    imageset: "images/product12.png",
    price: "77.000 ???",
    author: "????????????????????????????????? ",
    categ: "marketing",
  ),
  Bookt(
    title: '?????????????????? | CRUEL',
    imageset: 'images/product14.png',
    price: "50.000 ???",
    subtitle: '?????????????????? | ??????????????????',
    author: "?????????????????? ",
    categ: "love drama",
  ),
  Bookt(
      title: 'Easy American food for beginner',
      imageset: 'images/product17.png',
      price: "50.000 ???",
      author: " jamie oliveoil",
      categ: "food",
      subtitle: 'Jamie oliveoil | chillie'),
  Bookt(
      title: 'After 0ur Decade Series A',
      imageset: 'images/product16.png',
      price: "50.000 ???",
      author: "SixmaR.J  ",
      categ: "action",
      subtitle: 'SixmaR.J | SixmaR.J'),
];
