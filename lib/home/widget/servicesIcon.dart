import 'package:flutter/material.dart';
import 'package:tokopedia_ui/theme.dart';

class ServiceIcon extends StatelessWidget {
  const ServiceIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(19, 24, 19, 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: Offset(2, 2),
              blurRadius: 10)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopupBTN(
            iconpath: "assets/category-icon/gopay.png",
            text: "Gopay & Coins",
            deskripsi: "12.500",
            onpress: () {},
          ),
          TopupBTN(
            iconpath: "assets/category-icon/gopay.png",
            text: "Member Silver",
            deskripsi: "15 Kupon Baru",
            onpress: () {},
          )
        ],
      ),
    );
  }
}

class TopupBTN extends StatelessWidget {
  final void Function() onpress;
  final String iconpath;
  final String text;
  final String deskripsi;

  const TopupBTN({
    required this.iconpath,
    required this.text,
    required this.deskripsi,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
        child: Container(
          color: Colors.white,
          height: 40,
          
          child: Row(
            children: <Widget>[
              Image.asset(
                iconpath,
                height: 26,
              ),
              SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: blackColor),
                    ),
                    SizedBox(height: 4),
                    Text(
                      deskripsi,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: blackColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
