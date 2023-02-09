import 'package:flutter/material.dart';

import '../../widgets/setting_widget_profile.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "ຕິດຕໍ່ເຮົາ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              // color: Colors.black.withOpacity(0.2),
              child: Text(
                "ເລືອກຫົວຂໍ້ໃນການຕິດຕໍ່",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              // color: Colors.black.withOpacity(0.2),
              child: Text(
                "  ໃນກໍລະນີທີ່ນັກອ່ານມີຂໍ້ສົງໃສຫຼືຕ້ອງການສອບຖາມກ່ຽວກັບການບໍລິການຂອງເຮົາກະລຸນາເລືອກຫົວຂໍ້ທາງດ້ານລຸ່ມທີ່ຕົງກັບຄວາມຕ້ອງການຂອງທ່ານໄດ້.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
            ),
            ProfileWidget(
              title: "ຈື່ Username ຫຼື Password ບໍ່ໄດ້",
              icon: null,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              startIcon: false,
              onPressed: () {},
            ),
            Divider(
              thickness: 1,
            ),
            ProfileWidget(
              title: "ຊຳລະເງິນແລ້ວ ແຕ່ຍັງບໍ່ໄດ້ຮັບໜັງສື",
              icon: null,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              startIcon: false,
              onPressed: () {},
            ),
            Divider(
              thickness: 1,
            ),
            ProfileWidget(
              title: "ຕ້ອງການວາງຂາຍ E-Book ກັບເຮົາ",
              icon: null,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              startIcon: false,
              onPressed: () {},
            ),
            Divider(
              thickness: 1,
            ),
            ProfileWidget(
              title:
                  "ແນະນຳການບໍລິການ ຫຼື ແຈ້ງບັນຫາການໃຊ້ງານ ຫຼື ຕິດຕໍ່ເລື່ອງອື່ນໆ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              icon: null,
              startIcon: false,
              onPressed: () {},
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              // color: Colors.black.withOpacity(0.2),
              child: Text(
                "ຂໍ້ມູນການຕິດຕໍ່",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ນັກສືກສາ ຫ້ອງ 3IT2 ພາກວິຊາເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ, ຄະນະວິສະວະກໍາສາດ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'ໂທ: ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' 78357352',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'ສະໜັບສະໜຸນທຶນ: ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '69696969669',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    //Shokoon.onlyone@gmail.com
                    Row(
                      children: [
                        Text(
                          'Email: ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Shokoon.onlyone@gmail.com',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
