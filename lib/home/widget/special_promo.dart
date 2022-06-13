import 'package:flutter/material.dart';
import 'package:tokopedia_ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialPromo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            //Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Traktiran Pengguna Baru",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/product/banner1.webp",
                        width: 160,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset(
                          "assets/product/banner2.webp",
                          width: 160,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/product/banner3.webp",
                          width: 160,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Image.asset(
                            "assets/product/banner4.webp",
                            width: 160,
                          ),
                        ),
                      ],
                    ),
                  )
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
