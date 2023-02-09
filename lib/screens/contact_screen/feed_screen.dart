import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5))
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    "images/a.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'ໂປໂມຊັນມາໃໝ່',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cinzelDecorative(
                                textStyle:
                                    Theme.of(context).textTheme.headlineMedium,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            'ໂປໂມຊັນມາໃໝ່ສໍາຫຼັບປື້ມໝວດຄວາມຮັກທີ່ຈະມາໃນເດືອນກຸມພານີ້\n ທ່ານໃດສົນໃຈເເມ່ນສາມາດຕິດຕາມຂ່າວສານ Magic Book ໄດ້ເລີຍ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cinzelDecorative(
                              textStyle:
                                  Theme.of(context).textTheme.headlineMedium,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 5))
            ], color: Colors.black.withOpacity(0.2)),

            // child: Image.asset(
            //   "images/BG1.jpeg"
            //   ,fit: BoxFit.cover,
            // ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "images/b.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'ປະກາດ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cinzelDecorative(
                                textStyle:
                                    Theme.of(context).textTheme.headlineMedium,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            'ຖ້າກັນມາດົນເເລ້ວກັບນິຍາຍເລື່ອງໃໝ່ສໍາຫຼັບ I DoLL ນິຍາຍໃໝ່ຖະລົ່ມກະເເສທີ່ຈະມາໃນເດືອນທ້າຍເດືອນກຸມພານີ້\n ທ່ານໃດສົນໃຈເເມ່ນສາມາດຕິດຕາມຂ່າວສານ Magic Book ໄດ້ເລີຍ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cinzelDecorative(
                              textStyle:
                                  Theme.of(context).textTheme.headlineMedium,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
