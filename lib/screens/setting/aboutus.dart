import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          'ກ່ຽວກັບພວກເຮົາ',
          textAlign: TextAlign.center,
          style: GoogleFonts.cinzelDecorative(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: AnimatedOpacity(
                opacity: 1,
                duration: Duration(
                  milliseconds: 1000,
                ),
                child: Text(
                  "ເເນະນໍາສະມາຊິກ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 567,
              child: PageViewWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 0),
              child: Text(
                "ຈຸດປະສົງໃນການພັດທະນາແອັບ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Stack(children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(top: 58),
                    width: 340,
                    height: 285,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            """ພວກເຮົາຢາກເຮັດແອັບນີ້ເພື່ອເປັນສື່ກາງສຳລັບຄົນທີ່ມີໃຈມັກໃນການອ່ານ ແລະ  ຢາກເປັນພື້ນທີ່ໃຫ້ຄົນທີ່ຮັກໃນການອ່ານປື້ມສາມາດຫາປື້ມທີ່ຕົນສົນໃຈ ຫຼື ຢາກອ່ານໄດ້ສະດວກສະບາຍ. ນອກຈາກນັ້ນ, ທາງເຮົາຍັງຢາກເປີດໂອກາດໃຫ້ນັກຂຽນທີ່ມີໄອເດຍ ແລະ ມີຄວາມສາມາດເອົາເລື່ອງທີ່ຕົນເອງຂຽນມາລົງຂາຍໃນຮ້ານໜັງສືອອນລາຍຂອງແອັບເຮົາໄດ້ໂດຍບໍ່ຕ້ອງໄປເພິ່ງພາສຳນັກພິມ""",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 5))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      child: Align(
                        alignment: Alignment.bottomRight,
                      ),
                      radius: 50.0,
                      backgroundColor: Color(0xff4E6859),
                      backgroundImage: AssetImage("images/real.png"),
                    ),
                  )),
            ]),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  List<AboutUs_> _list = AboutUs_.generate();

  PageController? pageController;

  double viewportFraction = 0.7;

  double? pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController!.page;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        double scale = max(viewportFraction,
            (1 - (pageOffset! - index).abs()) + viewportFraction);

        double angle = (pageOffset! - index).abs();

        if (angle > 0.4) {
          angle = 0.9 - angle;
        }
        return Container(
          decoration: BoxDecoration(),
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.only(
            right: 5,
            left: 5,
            top: 60 - scale * 25,
            bottom: 0,
          ),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(
                3,
                2,
                0.001,
              )
              ..rotateY(angle),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 5))
                      ],
                    ),
                    child: Image.asset(
                      _list[index].url,
                      height: 400,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment:
                          Alignment((pageOffset! - index).abs() * 0.5, 0),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: angle == 0 ? 1 : 0,
                  duration: Duration(
                    milliseconds: 100,
                  ),
                  child: Text(
                    _list[index].name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: angle == 0 ? 1 : 0,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  child: Text(
                    _list[index].title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    // overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.7),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.9,
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: angle == 0 ? 1 : 0,
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  child: Text(
                    _list[index].class_,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: _list.length,
    );
  }
}

class AboutUs_ {
  String url;
  String name;
  String title;
  String class_;

  AboutUs_(this.url, this.name, this.title, this.class_);

  static List<AboutUs_> generate() {
    return [
      AboutUs_(
        "images/rj3.jpg",
        "ປ.ອ ສະຫວາດ\nໄຊປະດິດ",
        "ອາຈານນໍາພາ",
        "",
      ),
      AboutUs_(
        "images/Koon.HEIC",
        "ປະຕິພານ ວັນທານຸວົງ",
        "Developer and Programming",
        "3IT2",
      ),
      AboutUs_(
        "images/Thi.jpeg",
        "ທິລາວັນ ໜໍ່ເເກ້ວ",
        "Reseacher and Management",
        "3IT2",
      ),
      AboutUs_(
        "images/Nouth.jpeg",
        "ນົງນຸດ ເເສງຈັນເພັງ",
        "UI Designer and Project Manager",
        "3IT2",
      ),
      AboutUs_(
        "images/Phoy.jpg",
        "ເພັດວິໄລ ຈັນດາຣາ",
        "UI Designer and Co-reseacher",
        "3IT2",
      ),
      AboutUs_(
        "images/Pou.jpeg",
        "ປູຄໍາ ຈັນສີນາ",
        "Element Designer",
        "3IT2",
      ),
    ];
  }
}
