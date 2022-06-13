import 'dart:ui';

import 'package:flutter/material.dart';


class dealsPage extends StatelessWidget {
  const dealsPage({ Key? key }) : super(key: key);

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
                        "Pilihan Deals hari ini",
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
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset("assets/product/produk1.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset("assets/product/produk2.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset("assets/product/produk3.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset("assets/product/produk4.jpg"),
                      ),
                    ),
                  ),
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