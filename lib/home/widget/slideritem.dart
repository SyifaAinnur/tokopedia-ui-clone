import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(viewportFraction: 0.95, aspectRatio: 50 / 16),
      items: [
        "assets/carousel-slider/banner-1.webp",
        "assets/carousel-slider/banner-2.webp"
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    child: Image.asset(
                  i,
                  fit: BoxFit.contain,
                )),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
