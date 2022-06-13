import 'package:flutter/material.dart';
import 'package:tokopedia_ui/home/widget/countdown_widget.dart';
import 'package:tokopedia_ui/home/widget/product_thumnail.dart';



class Today extends StatelessWidget {

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
                      "Hanya hari ini",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
            SizedBox(height: 10),
            Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                      height: 230,
                      width: 120,
                    ),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                    ProductThumbnail(),
                  ],
                ))
          //Items
        ],
      ),
    );
  }
}