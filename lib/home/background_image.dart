import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundImage extends StatelessWidget {
  final String imageUrl;

  BackgroundImage(this.imageUrl, {int? width, int? height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     colorFilter: ColorFilter.mode(
        //         Colors.black.withOpacity(0.3), BlendMode.darken),

        //   ),
        // ),
        child: Image.asset(imageUrl)
      ),
    );
  }
}