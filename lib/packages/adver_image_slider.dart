import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class AdvertiseImagesSlider extends StatelessWidget {
  const AdvertiseImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorBackgroundColor: Colors.grey,
      indicatorColor: Colors.redAccent,
      height: 350,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: InteractiveViewer(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/ad4.webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: InteractiveViewer(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/1.png",
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: InteractiveViewer(
            child: ClipRRect(   borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                 "images/3.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: InteractiveViewer(
            child: ClipRRect(   borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/4.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
