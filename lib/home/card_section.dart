import 'package:flutter/material.dart';
import 'package:tokopedia_ui/home/background_image.dart';
import 'package:tokopedia_ui/theme.dart';


class CardSection extends StatelessWidget {
  final String name;
  final String imageUrl;

  CardSection({required this.name, required this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          width: 110,
          height: 120,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
              child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Center(
                        child: BackgroundImage(
                            imageUrl,
                          ),
                          
                      ),
                      
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                name,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          
                        ],
                      )
                    ],
                  ),
            ),
        );
  }
}