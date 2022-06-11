import 'package:flutter/material.dart';
import 'package:tokopedia_ui/home/widget/menu_button.dart';

class Menutop extends StatelessWidget {
  const Menutop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MenuButton("assets/category-icon/official-store.png",
              label: "Official Store"),
          MenuButton("assets/category-icon/lihat-semua.png",
              label: "Lihat Semua"),
          MenuButton("assets/category-icon/rumah-tangga.png",
              label: "Rumah Tangga"),
          MenuButton("assets/category-icon/topup.png",
              label: "Top Up & Tagihan"),
          MenuButton("assets/category-icon/elektronik.png",
              label: "Elektronik"),
          MenuButton("assets/category-icon/fashion.png", label: "Fashion-Pria"),
          MenuButton("assets/category-icon/rumah-tangga.png",
              label: "Rumah Tangga"),
          MenuButton("assets/category-icon/keuangan.png", label: "Keuangan"),
          MenuButton("assets/category-icon/travel.png",
              label: "Travel & Entertainment"),
          MenuButton("assets/category-icon/elektronik.png",
              label: "Elektronik"),
          MenuButton("assets/category-icon/komputer-dan-laptop.png",
              label: "Komputer"),
          // MenuButton(label: "Official Store",icon: Icon(Icons.description),),
          // MenuButton(label: "Lihat Semua", icon: Icon(Icons.add_business),),
          // MenuButton(label: "Rumah Tangga",icon: Icon(Icons.map),),
          // MenuButton(label: "Top Up & Tagihan",icon: Icon(Icons.safety_divider),),
          // MenuButton(label: "Kesehatan",icon: Icon(Icons.expand),),
        ],
      ),
    );
  }
}
