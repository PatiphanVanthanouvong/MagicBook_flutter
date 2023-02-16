import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:magic_book_1/subscreens/cartscreen.dart';

import 'package:magic_book_1/packages/adver_image_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bookview/freebook.dart';
import '../widgets/bookview/goodbook.dart';
import '../widgets/bookview/newbook.dart';
import '../widgets/bookview/pricebook.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Color(0xff5AAF5F),
      Color.fromARGB(255, 15, 77, 142),
      Color.fromARGB(255, 240, 166, 54),
    ];
    var cName = [
      "Thilavanh",
      "Nongnouth",
      "Poukham",
    ];
    var imageList = [
      "images/product15.png",
      "images/f2.webp",
      "images/s3.jpg",
     
    ];

    var iconImageList = [
      "images/R3.png",
      "images/R2.png",
      "images/R1.png",
    ];
    var adimgList = [
      "images/c.png",
      "images/d.png",
      "images/e.png",
    ];

    print(
      MediaQuery.of(context).size.width / 1.5,
    );
    print(
      MediaQuery.of(context).size.height / 5.5,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            padding: EdgeInsets.only(left: 23, top: 50, bottom: 27),
            decoration: BoxDecoration(
              color: Color(0xff4E6859),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'MagicBook',
                  style: GoogleFonts.cinzelDecorative(
                    textStyle: Theme.of(context).textTheme.headline4,
                    shadows: <Shadow>[
                      Shadow(
                          offset: Offset(1.0, 2.0),
                          blurRadius: 10.0,
                          color: Colors.black87),
                    ],
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CartScreen()));
                  },
                  icon: Icon(Icons.shopping_cart_outlined),
                  iconSize: 22,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 12,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  iconSize: 23,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: 210,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: AdvertiseImagesSlider(),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 5))
                    ], color: Clrs[i], borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        adimgList[i],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ຫນັງສືມາໃໝ່",
                  style: GoogleFonts.notoSerifLao(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "ເບິ່ງທັງໝົດ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: NewBook(),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ໝວດໝູ່",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "ເບິ່ງທັງໝົດ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (var i = 0; i < 3; i++)
                Container(
                  height: 77,
                  width: 123,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 1,
                        )
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(iconImageList[i], fit: BoxFit.cover)),

                  // child: Text(
                  //   "hello"
                  // ),
                )
            ]),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ໜັງສືຂາຍດີ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "ເບິ່ງທັງໝົດ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GoodBook(),
          ),
          SizedBox(height: 35),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ໜັງສືຫຼຸດລາຄາ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "ເບິ່ງທັງໝົດ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: PriceBook(),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ລີວິວ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "ເບິ່ງທັງໝົດ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (var i = 0; i < 3; i++)
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 330,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Text(
                                "ໜັງສືດີຫຼາຍ ໃຊ້ພາສາເຂົ້າໃຈງ່າຍ ແຕ່ໄດ້ແນວຄິດດີໆ ທັງເລື່ອງການ ເງິນລວມໄປເຖິງການໃຊ້ຊີວິດດ້ວຍ "),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: RatingBar.builder(
                                initialRating: 3.5,
                                minRating: 0.5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.redAccent,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 5.5,
                                height: 89,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(imageList[i]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Text(
                                        cName[i],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Text(
                                      "Unknowuser000",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "28/7/2099",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ]),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ໜັງສືເເຈກຟຣີ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "ເບິ່ງທັງໝົດ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: FreeBook(),
          ),
           SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
