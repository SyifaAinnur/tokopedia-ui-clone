import 'package:flutter/material.dart';
import 'package:tokopedia_ui/home/card_section.dart';
import 'package:tokopedia_ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Title
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Kategori pilihan",
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
              ),
            ],
          ),

          Container(
            child: Column(
              children: [
                Row(
                  children: [cardPage(context), ],
                  
                ),
                Row(
                  children: [cardPages(context), ],
                )
              ],
            ),
          ),
          //Items
        ],
      ),
    );
  }
}

Widget cardPage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        CardSection(
          name: 'makanan',
          imageUrl: "assets/product/kategori1.jpg",
        ),
        CardSection(
          name: 'Elektronik',
          imageUrl: "assets/product/kategori2.jpg",
        ),
        CardSection(
          name: 'Dapur',
          imageUrl: "assets/product/kategori3.jpg",
        ),
      ],
    ),
  );
}

Widget cardPages(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        CardSection(
          name: 'Perawatan',
          imageUrl: "assets/product/kategori4.jpg",
        ),
        CardSection(
          name: 'Buku',
          imageUrl: "assets/product/kategori5.jpg",
        ),
        CardSection(
          name: 'Laptop',
          imageUrl: "assets/product/kategori6.jpg",
        ),
      ],
    ),
  );
}
