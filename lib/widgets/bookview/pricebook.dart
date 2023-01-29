import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ItemScreen()));
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
}

class PriceBookt {
  final String title;
  final String subtitle;
  final String imageset;
  final String price;
  PriceBookt({
    required this.title,
    required this.subtitle,
    required this.imageset,
    required this.price,
  });
}

List<PriceBookt> items3 = [
  PriceBookt(
    title: 'ບົວແດງ',
    subtitle: 'KORAWIA | KORAWIA',
    imageset: "images/yangyang.jpeg",
    price: "50.000 ₭",
  ),
  PriceBookt(
      title: 'Hahahhahah',
      imageset: 'images/p11.png',
      price: "50.000 ₭",
      subtitle: 'KORAWIA | KORAWIA'),
  PriceBookt(
      title: '14:00',
      imageset: 'images/p12.png',
      price: "50.000 ₭",
      subtitle: 'KORAWIA | KORAWIA'),
  PriceBookt(
      title: '15:00',
      imageset: 'images/p13.png',
      price: "50.000 ₭",
      subtitle: 'KORAWIA | KORAWIA'),
];
