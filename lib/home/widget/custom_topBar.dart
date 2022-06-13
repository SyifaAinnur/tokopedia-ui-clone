import 'package:flutter/material.dart';
import 'package:tokopedia_ui/theme.dart';

class CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0).copyWith(bottom: 0),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 15,
                            color: Colors.grey,
                            
                          ),
                          Text(
                            "Cari di Tokopedia",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(
                      Icons.mail_outline,
                      color: whiteColor,
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(
                      Icons.notifications_none,
                      color: whiteColor,
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: whiteColor,
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(
                      Icons.menu,
                      color: whiteColor,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
