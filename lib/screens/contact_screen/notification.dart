import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../widgets/notiwidget.dart';

class NotiScreen extends StatefulWidget {
  const NotiScreen({super.key});

  @override
  State<NotiScreen> createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
          padding: EdgeInsets.only(left: 15),
            child: Text(
              'ລ່າສຸດ',
              textAlign: TextAlign.center,
              style: GoogleFonts.cinzelDecorative(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          NotiWidget(
            subtitle: "Poukham ໄດ້ກົດຫົວໃຈໃຫ້ຄໍາຄິດເຫັນຂອງທ່ານ",
            title: "ກົດຫົວໃຈຄໍາຄິດເຫັນຂອງທ່ານ",
            icon: Icons.person,
            onPressed: () {},
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          NotiWidget(
            subtitle: "ຂ້ອຍກະວ່າມັນມ່ວນຫຼາຍ",
            title: "ມີຄົນໄດ້ຕອບກັບຄວາມຄິດເຫັນຂອງທ່ານ",
            icon: Icons.person_3,
            onPressed: () {},
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
           padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
             thickness: 1,
            color: Color(0xff4E6859),
            ),
          ),
            Padding(
          padding: EdgeInsets.only(left: 15),
            child: Text(
              'ໃນອາທິດນີ້',
              textAlign: TextAlign.center,
              style: GoogleFonts.cinzelDecorative(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          NotiWidget(
            subtitle: "I think this Application is pretty good",
            title: "ກົດຫົວໃຈຄໍາຄິດເຫັນຂອງທ່ານ",
            icon: Icons.person_4,
            onPressed: () {},
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          NotiWidget(
            subtitle: "Nongnouth studio ໄດ້ອັບເດດ ນິຍາຍ Idoll ຕອນທີ່ 69",
            title: "ນັກຂຽນທີ່ທ່ານຕິດຕາມລົງຜົນງານໃໝ່ເເລ້ວ",
            icon: LineAwesomeIcons.pen_fancy,
            onPressed: () {},
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
           Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                       thickness: 1,
                      color: Color(0xff4E6859),
                      ),
            ),
            Padding(
          padding: EdgeInsets.only(left: 15),
            child: Text(
              'ໃນເດືອນນີ້',
              textAlign: TextAlign.center,
              style: GoogleFonts.cinzelDecorative(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
           
          NotiWidget(
            subtitle: "Studio Glibli ໄດ້ອັບເດດ Manga ຕອນທີ່ 103",
            title: "ນັກຂຽນທີ່ທ່ານຕິດຕາມລົງຜົນງານໃໝ່ເເລ້ວ",
            icon: LineAwesomeIcons.pen_fancy,
            onPressed: () {},
            overflow: TextOverflow.ellipsis,
          ),     SizedBox(
            height: 5,
          ),
             NotiWidget(
            subtitle: "Thilavanh ໄດ້ກົດຫົວໃຈໃຫ້ຄໍາຄິດເຫັນຂອງທ່ານ",
            title: "ກົດຫົວໃຈຄໍາຄິດເຫັນຂອງທ່ານ",
            icon: Icons.person,
            onPressed: () {},
            overflow: TextOverflow.ellipsis,
          ),
           SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
