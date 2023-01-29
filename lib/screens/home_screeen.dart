import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:magic_book_1/widgets/adver_image_slider.dart';
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
      Color(0xff3C7C40),
      Color(0xff4E8448),
    ];
    // var textList = [
    //   "Illustration Collection",
    //   "ບົວແດງ",
    //   "ກອງພັນທີ 2",
    //   "my boss",
    //   "my boss",
    // ];

    // var nameList = [
    //   "KORAWIA | KORAWIA",
    //   "ດວງຈໍາປາ| Nongnouth",
    //   "ສຸວັນທອນ | 123233",
    //   "my boss | 231323",
    //   "my boss | 2421424",
    // ];
    var imageList = [
      "images/product6.png",
      "images/product7.png",
      "images/product3.png",
      "images/product2.png",
      "images/product4.png",
    ];

    var iconImageList = [
      "images/R2.png",
      "images/R2.png",
      "images/R1.png",
    ];
    // print(MediaQuery.of(context).size.height / 4.0);
    // print(MediaQuery.of(context).size.width);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
  
          SafeArea(
            child: Container(
         
              height: 130,
              padding: EdgeInsets.only(left: 23, top: 27, bottom: 27),
              
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
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  
                  IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ItemScreen()));
                    },
                    icon: Icon(Icons.shopping_cart_outlined),
                    iconSize: 22,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  IconButton (
                    onPressed: () {
                      
                    },
                    icon: Icon(Icons.search),
                    iconSize: 23,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: AdvertiseImagesSlider(),
                ),
              ],
            ),
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
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 5.5,
                    decoration: BoxDecoration(
                        color: Clrs[i], borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ຫຼດ11%ສໍາລັບປີໃຫມ່ ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Container(
                              width: 90,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                "Read Now",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        )),
                        Image.asset(
                          imageList[i],
                          height: 130,
                          width: 110,
                        ),
                      ],
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
          NewBook(),
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
                Stack(
                  children: <Widget>[
                    Container(
                      height: 77,
                      width: 123,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Image.asset(iconImageList[i], fit: BoxFit.cover),

                      // child: Text(
                      //   "hello"
                      // ),
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
          GoodBook(),
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
          PriceBook(),
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
                                height: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/product7.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Text(
                                        "GOOD VIBES",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Text(
                                      "users69nongnouth242",
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
            padding: const EdgeInsets.only(top: 15.0),
            child: FreeBook(),
          ),
      
        ],
      ),
    );
  }
}
