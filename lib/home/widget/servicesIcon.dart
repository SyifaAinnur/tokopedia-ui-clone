import 'package:flutter/material.dart';
import 'package:tokopedia_ui/theme.dart';

class ServiceIcon extends StatelessWidget {

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TopupBTN("assets/category-icon/gopay.png", "Gopay & Coins", "12.250",
              "  Active"),
          TopupBTN(
              "assets/category-icon/member.png", "Member Silver", "15 Kupon Baru", "")
        ],
      ),
    );
  }
}

Widget TopupBTN(String iconpath, String text, String deskripsi, String label) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 36),
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
                  RichText(
                    text: TextSpan(
                      text: deskripsi,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: blackColor),
                      children: <TextSpan>[
                        TextSpan(
                          text: label,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
