import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../widgets/setting_widget_profile.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var author = [
    "Tatsuya Endo",
    "One",
    "IKAGAI",
    "book3",
    "book1",
  ];
  var price = [
    "120.000₭",
    "110.000₭",
  ];
  var nameList = [
    "SpyxFamily | Tatsuya Endo",
    "Onepunchman | MadHouse",
    "KORAWIA | KORAWIA",
    "KORAWIA | KORAWIA",
    "KORAWIA | KORAWIA",
  ];
  var imageList = [
   "images/f1.webp",
     "images/f2.webp",

 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4E6859),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        centerTitle: true,
        title: Text(
          'ກະຕ່າໃສ່ປື້ມ',
          textAlign: TextAlign.center,
          style: GoogleFonts.cinzelDecorative(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 110,
      ),
      body: Column(
        children: <Widget>[
          CartWidget(
              imageList: imageList,
              nameList: nameList,
              author: author,
              price: price),
        ],
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    required this.imageList,
    required this.nameList,
    required this.author,
    required this.price,
  });
  final List<String> price;
  final List<String> imageList;
  final List<String> nameList;
  final List<String> author;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < 2; i++)
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
                       imageList[i],
                        fit: BoxFit.cover,
                      ),
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.2)),
                    ),
                    Container(
                      height: 130,
                      width: 180,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.2)),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                        author[i],
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
                                        author[i],
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 130,
                        decoration:
                            BoxDecoration(color: Colors.white.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            Text(
                              price[i],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 48, 90, 49),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ລວມເປັນເງິນ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    "230.000₭",
                    style: TextStyle(
                        color: Color.fromARGB(255, 48, 90, 49),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 168,
              child: Column(
                children: [
                  ProfileWidget(
                    title: "Credit Card",
                    icon: LineAwesomeIcons.credit_card,
                    textColor: Colors.black,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    onPressed: () {},
                  ),
                  ProfileWidget(
                    title: "Paypal",
                    icon: LineAwesomeIcons.paypal_credit_card,
                    textColor: Colors.black,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    onPressed: () {},
                  ),
                  ProfileWidget(
                    title: "BCEL",
                    icon: LineAwesomeIcons.dollar_sign,
                    textColor: Colors.black,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    onPressed: () {},
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5))
                ],
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      "ຈ່າຍເງິນ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
