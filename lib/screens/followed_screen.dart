import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';



class FollowedScreen extends StatelessWidget {
  TextEditingController controller =
      TextEditingController(text: " ຄົ້ນຫາໜັງສືຂອງທ່ານ");

  var cprint = [
    "Kohei Horikoshi",
    "Hapor cawling",
    "Hogwat uni",
    "book1",
  ];

  var author = [
    
    "Kohei Horikoshi",
    "C.S lewis", 
       "J.K rolling",
  ];

  var nameList = [
    "My Hero Acadamia | Kohei Horikoshi",
    "The Chronicles of Narnia | C.S lewis",
      "Fantastic Beast | J.K rolling",
 
  ];
  var imageList = [
 "images/fol1.png",
  "images/fol2.jpg",
   "images/fol3.jpg",

  ];

  var priceList = [
    
    "150.000 ₭",
    "95.000 ₭",
    "320.000 ₭",
    "95.000 ₭",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 10),
            
            decoration: BoxDecoration(
               color: Color(0xff4E6859),
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            ),
            child: Column(
              children: [
                Text(
                  'ໜັງສືທີ່ກົດຕິດຕາມ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cinzelDecorative(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 15),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "ໜັງສືທີ່ກົດຕິດຕາມທັງໝົດ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: [
                for (int i = 0; i < 3; i++)
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
                              top: 10, bottom: 10, left: 15, right:5),
                          width: 90,
                          height: 130,
                          child: Image.asset(
                          imageList[i],
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
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
                                    horizontal: 5, vertical: 8),
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
                                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
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
                                    SizedBox(height: 2,),
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
                                            cprint[i],
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    
                                    Container(
                                width: 70,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xff4E6859),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    priceList[i],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                            ),
                                    
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.more_horiz),
                                Icon(LineIcons.heartAlt,
                                color: Colors.red,)
                              ],
                            )),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),
                
        ],
      ),
    );
  }
}
