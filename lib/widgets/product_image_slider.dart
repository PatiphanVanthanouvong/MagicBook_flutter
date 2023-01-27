import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorBackgroundColor: Colors.white,
      indicatorColor: Colors.redAccent,
      height: 350,
      
      autoPlayInterval: 2000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
         Padding(padding: EdgeInsets.all(8),
        child: InteractiveViewer(
          child: Image.asset("images/ad1.png",
          ),
        ),
        ),
         Padding(padding: EdgeInsets.all(8),
        child: InteractiveViewer(child: Image.asset("images/ad1.png")),
        ),
         Padding(padding: EdgeInsets.all(8),
        child: InteractiveViewer(child: Image.asset("images/ad1.png")),
        ),
         Padding(padding: EdgeInsets.all(8),
        child: InteractiveViewer(child: Image.asset("images/ad1.png")),
        ),
      ],
    );
  }
}