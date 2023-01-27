import 'package:flutter/material.dart';

class PassRecoverScreen extends StatelessWidget {
  const PassRecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff4E6859),
              Color(0xff4E6859),
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, right: 60, left: 24 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [ 
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(width: 80,),
                          Text(
                            'ລືມລະຫັດຜ່ານ',
                            style: TextStyle(
                             
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ອີເມວທີ່ໃຊ້ສະໝັກ"),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(fontSize: 15),
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              hintText: "nongnouth@email.com ",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                           SizedBox(
                            height: 10,
                          ),
                         Container(
                          child: Text(" ລິ້ງສໍາລັບການຕັ້ງລະຫັດຜ່ານໃໝ່ຈະຖືກສົ່ງໄປຍັງອີເມວທີ່ທ່ານກອກດ້ານເທິງກະລຸນາເຂົ້າໄປໃນອີເມວຂອງທ່ານເພື່ອເປີດລິ້ງແລະເຮັດການຕັ້ງລະຫັດຜ່ານໃໝ່",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                          ),

                         ),
                            SizedBox(
                            height: 20,
                          ),
                          
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => Screens(),
                                //     ));
                              },
                              child: Text("ກູ້ຄືນ"),
                              style: ElevatedButton.styleFrom(
                                shadowColor: Color(0xff4E6859),
                                backgroundColor: Color(0xff4E6859),
                              ),
                            ),
                          ),
                        
                          
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}