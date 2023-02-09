import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';



class CouPon extends StatefulWidget {
  const CouPon({super.key});

  @override
  State<CouPon> createState() => _CouPonState();
}

class _CouPonState extends State<CouPon> {
  @override
  Widget build(BuildContext context) {
    var controller;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4E6859),
        centerTitle: true,
        title: Text("ຄູປອງລູ້ນໂຊກ"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            height: 219,
            decoration: BoxDecoration(color: Colors.grey[400]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coupon for Reader",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    IconButton(
                      onPressed: () {
                             AwesomeDialog(
                                btnOkColor: Color(0xff4E6859),
                            
                                context: context,
                                animType: AnimType.leftSlide,
                                headerAnimationLoop: false,
                                dialogType: DialogType.info,
                                showCloseIcon: true,
                                title: 'ໃສ່ເລກລະຫັດ',
                                desc: 'ທ່ານຈະໄດ້ຮັບສ່ວນຫຼຸດຕາມໂໍຊກລາບ \n ຕົວຢ່າງ: DeveloperSoHandsome',
                                btnOkOnPress: () {
                                  debugPrint('OnClcik');
                                },
                                btnOkIcon: Icons.check_circle,
                                onDismissCallback: (type) {
                                  debugPrint(
                                      'Dialog Dissmiss from callback $type');
                                },
                              ).show();
                      },
                       icon: Icon(LineIcons.questionCircleAlt,
                       color: Colors.white,
                       size: 25,
                       ),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: CupertinoSearchTextField(
                      keyboardType: TextInputType.text,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      itemColor: CupertinoColors.black,
                      itemSize: 14,
                      controller: controller,
                      onChanged: (value) {},
                      onSubmitted: (value) {
                        
                      },
                      autocorrect: true,
                      placeholder: "ໃສ່ລະຫັດລຸ້ນໂໍໍຊກ",
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: OutlinedButton(
                    onPressed: () {
                        AwesomeDialog(
                                btnOkColor: Color(0xff4E6859),
                            
                                context: context,
                                animType: AnimType.leftSlide,
                                headerAnimationLoop: false,
                                dialogType: DialogType.success,
                                showCloseIcon: true,
                                title: 'ຂໍສະເເດງຄວາມຍິນດີ',
                                desc: 'ທ່ານຈະໄດ້ຮັບສ່ວນຫຼຸດ 15% ສໍາລັບໜັງສຶມາເເຮງ',
                                btnOkOnPress: () {
                                  debugPrint('OnClcik');
                                },
                                btnOkIcon: Icons.check_circle,
                                onDismissCallback: (type) {
                                  debugPrint(
                                      'Dialog Dissmiss from callback $type');
                                },
                              ).show();
                    },
                    child: Text(
                      " Enter Coupons",
                      style: TextStyle(
                        color: Colors.white,
                        // color: Color(0xff4E6859),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Color(0xff4E6859),
                      backgroundColor: Color(0xff4E6859),
                    ),
                  ),
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
