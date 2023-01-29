import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class GoodBook extends StatefulWidget {
  @override
  State<GoodBook> createState() => _GoodBookState();
}

class _GoodBookState extends State<GoodBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: items2.length,
        separatorBuilder: (context, _) => SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
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
                    showModalBottomSheet<String>(
                      enableDrag: true,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return ListView(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(24),
                              color: Colors.black,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    items2[index].title,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "By",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    items2[index].subtitle,
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.green),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      items2[index].imageset,
                                      width: 200,
                                      height: 300,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        items2[index].author,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.green),
                                      ),
                                      Text(
                                        "|",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        items2[index].categ,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, //*
                                            fontSize: 16,
                                            color: Colors.green),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                              "ເບີ່ງຕົວຢ່າງ",
                                              style: TextStyle(
                                                color: Color(0xff4E6859),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              disabledBackgroundColor:
                                                  Color(0xff4E6859),
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
                                              items2[index].price,
                                              style: TextStyle(
                                                color: Colors.white,
                                                // color: Color(0xff4E6859),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shadowColor: Color(0xff4E6859),
                                              backgroundColor:
                                                  Color(0xff4E6859),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3.5,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          LineIcons.shoppingBag,
                                          color: Color(0xff4E6859),
                                          size: 35,
                                        ),
                                        Icon(
                                          LineIcons.shoppingCart,
                                          color: Color(0xff4E6859),
                                          size: 35,
                                        ),
                                        Icon(
                                          LineIcons.alternateShareSquare,
                                          color: Color(0xff4E6859),
                                          size: 35,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Wish",
                                          style: TextStyle(
                                            color: Color(0xff4E6859),
                                          ),
                                        ),
                                        Text(
                                          "Follow",
                                          style: TextStyle(
                                            color: Color(0xff4E6859),
                                          ),
                                        ),
                                        Text(
                                          "Share",
                                          style: TextStyle(
                                            color: Color(0xff4E6859),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      items2[index].imageset,
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
                      items2[index].title,
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
                      items2[index].subtitle,
                      style: GoogleFonts.notoSerifLao(
                        textStyle: TextStyle(color: Colors.black, fontSize: 11),
                      ),
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
                            items2[index].price,
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
}

class GoodBookt {
  final String title;
  final String subtitle;
  final String imageset;
  final String price;
  final String author;
  final String categ;
  GoodBookt({
    required this.title,
    required this.subtitle,
    required this.imageset,
    required this.price,
    required this.author,
    required this.categ,
  });
}

List<GoodBookt> items2 = [
  GoodBookt(
    title: 'MINDSET',
    subtitle: 'Carol Dweck | Secret',
    imageset: "images/product5.png",
    price: "50.000 ₭",
    author: "Carol Dweck ",
    categ: "Pyscho",
  ),
  GoodBookt(
    title: 'IKIGAI',
    imageset: 'images/product6.png',
    price: "50.000 ₭",
    subtitle: 'Héctor García | Naruto',
    author: "Héctor García  ",
    categ: "Life",
  ),
  GoodBookt(
      title: 'GOOD VIBES , GOOD LIFE',
      imageset: 'images/product7.png',
      price: "50.000 ₭",
      author: "Vex King  ",
      categ: "Daily life",
      subtitle: 'Vex King | xxx'),
  GoodBookt(
      title: 'INTO THE MAGIC SHOP',
      imageset: 'images/product8.png',
      price: "50.000 ₭",
      author: "James R ",
      categ: "Fantasy",
      subtitle: 'James R |  Amarin'),
];