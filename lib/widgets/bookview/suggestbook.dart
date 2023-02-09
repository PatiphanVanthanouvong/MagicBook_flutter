import 'package:flutter/material.dart';

class SuggestBook extends StatelessWidget {
  const SuggestBook({super.key});

  @override
  Widget build(BuildContext context) {
    var imageList = [
      "images/s3.jpg",
      "images/s4.jpg",
      "images/s5.jpg",
      "images/s1.png",
      "images/s2.jpg",
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 18),
      child: Row(
        children: [
          for (int i = 0; i < 5; i++)
            Container(
              margin: EdgeInsets.only(right: 17),
              width: 74,
              height: 112,
            
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ItemScreen()));
                },
                child: Image.asset(
                  imageList[i],
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
