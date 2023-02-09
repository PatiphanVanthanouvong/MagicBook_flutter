import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class FreeBook extends StatefulWidget {
  @override
  State<FreeBook> createState() => _FreeBookState();
}

class _FreeBookState extends State<FreeBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: items.length,
        separatorBuilder: (context, _) => SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) => buildCard(items: items[index]),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class Bookt {
  final String title;
  final String subtitle;
  final String imageset;

  Bookt({
    required this.title,
    required this.subtitle,
    required this.imageset,
  });
}

List<Bookt> items = [
  Bookt(
    title: 'Illustration Collection',
    subtitle: 'KORAWIA | KORAWIA',
    imageset: "images/product11.png",
  ),
  Bookt(
      title: 'ບົວແດງ',
      imageset: 'images/product13.png',
      subtitle: 'ດວງຈໍາປາ  | XXX'),
  Bookt(
      title: 'ກອງພັນທີ 2',
      imageset: 'images/product9.png',
      subtitle: 'ສຸວັນທອນ  | XXX'),
  Bookt(
      title: 'ເຈົ້າເວົ້າໄດ້ ຊີວິດກ້າວໜ້າໄວ',
      imageset: 'images/product10.png',
      subtitle: 'ທອງດີ | XXX'),
];

Widget buildCard({
  required Bookt items,
}) =>
    Container(
      decoration: BoxDecoration(
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
          Container(
            child: Material(
              child: Ink.image(
                image: AssetImage(
                  items.imageset,
                ),
                width: 180,
                height: 220,
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () {
                    //             
                  },
                ),
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
                items.title,
                overflow: TextOverflow.ellipsis,
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
                items.subtitle,
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
                      "ອ່ານໄດ້ເລີຍ",
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
                child: Icon(Icons.check_circle_outline_outlined),
              )
            ],
          ),
        ],
      ),
    );
