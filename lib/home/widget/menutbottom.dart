import 'package:flutter/material.dart';
import 'package:tokopedia_ui/home/widget/menu_button.dart';

class Menubottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MenuButton("assets/category-icon2/bangga-lokal.png",
              label: "Bangga Lokal"),
          MenuButton("assets/category-icon2/bazar-hari-ini.png",
              label: "Bazar Hari Ini"),
          MenuButton("assets/category-icon2/live-shopping.png",
              label: "Live shopping"),
          MenuButton("assets/category-icon2/belanja-harian.png",
              label: "Belanja Harian"),
          MenuButton("assets/category-icon2/bayar-ditempat.png",
              label: "Bayar di Tempat"),
        ],
      ),
    );
  }
}
