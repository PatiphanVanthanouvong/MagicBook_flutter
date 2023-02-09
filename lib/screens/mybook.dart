import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_book_1/widgets/bookview/bookread.dart';

class MyBook extends StatefulWidget {
  @override
  State<MyBook> createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  TextEditingController controller =
      TextEditingController(text: " ຄົ້ນຫາໜັງສືຂອງທ່ານ");

 var 
 tprint = [
    "Laos national print",
    "America PNA",
    "IKAGAI",
    "book3",
    "book1",
  ];
  var author = [
    "ດວງຈໍາປາ",
    "RichDad",
    "IKAGAI",
    "book3",
    "book1",
  ];

  var nameList = [
    "ບົວແດງ  | ດວງຈໍາປາ",
    "Money Mindset | RichDad",
    "KORAWIA | KORAWIA",
    "KORAWIA | KORAWIA",
    "KORAWIA | KORAWIA",
  ];
  var imageList = [
    "product13",
    "product15",
    "product2",
    "product1",
    "product3",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          MybookWidget(
              imageList: imageList, nameList: nameList, author: author, 
              tprint: 
              tprint),
        ],
      ),
    );
  }
}

class MybookWidget extends StatelessWidget {
  const MybookWidget({
    super.key,
    required this.imageList,
    required this.nameList,
    required this.author, required this.
    tprint,
  });

  final List<String> imageList;
  final List<String> nameList;
  final List<String> author;
    final List<String> 
    tprint;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
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
                          top: 10, bottom: 10, left: 15, right: 0),
                      width: 90,
                      height: 130,
                      child: Image.asset(
                        "images/${imageList[i]}.png",
                        fit: BoxFit.cover,
                      ),
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.2)),
                    ),
                    Container(
                      height: 130,
                      width: 185,
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
                                horizontal: 5.5, vertical: 4),
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
                                        
                                        tprint[i],
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "ອ່ານເເລ້ວ:",
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
                                        "87%",
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 130,
                    
                          decoration:
                              BoxDecoration(color: Colors.white.withOpacity(0.2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_horiz),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BooksRead()));
                                },
                                child: Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color(0xff4E6859),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'ອ່ານຕໍ່',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
