import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tokopedia_ui/home/widget/product_thumnail.dart';

class produkPilihan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          children: [
            //Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Produk pilihan untukmu",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "Lihat semua",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                  ProductThumbnail(),
                ],
              ),
            ),
            //Items
          ],
        ),
      ),
    );
  }
}
