import 'package:flutter/material.dart';

class AboutusPageView extends StatelessWidget {
  const AboutusPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.zero,
      height: 340,
      child: PageView.builder(
          controller: PageController(viewportFraction: 0.7),
          physics: BouncingScrollPhysics(),
          itemCount: detailList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(right: 20),
                width: 209,
                height: 340,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0, top: 15),
                      child: CircleAvatar(
                        maxRadius: 90,
                        backgroundImage: AssetImage(detailList[index].pic),
                      ),
                    )
                  ],
                ),
              ),
              ),
    );
  }
}

class Detail {
  final String namet;
  final String pic;
  final String title;

  Detail(this.namet, this.pic, this.title);
}

List<Detail> detailList = [
  Detail("hello", "images/Pou.jpeg", "student"),
  Detail("hello", "images/Nouth.jpeg", "student"),
  Detail("hello", "images/Thi.jpeg", "student"),
];
