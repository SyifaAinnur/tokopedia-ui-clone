import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokopedia_ui/theme.dart';

class MainBottomNavbar extends StatefulWidget {


  @override
  _MainBottomNavbarState createState() => _MainBottomNavbarState();
}
int currindex = 0;

class _MainBottomNavbarState extends State<MainBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconBTMAppbar(
              "assets/category-icon/home.svg",
              "Home",
              0,
            ),
            iconBTMAppbar(
              "assets/category-icon/deals.svg",
              "Feed",
              1,
            ),
            
            iconBTMAppbar(
              "assets/category-icon/finance.svg",
              "Official Store",
              2,
            ),
            iconBTMAppbar(
              "assets/category-icon/profile.svg",
              "Profile",
              3,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector iconBTMAppbar(String svgpath, String text, int index) {
    return GestureDetector(
      onTap: () {
      },
      child: Tooltip(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(8),
        message: text,
        child: Container(
          color: Colors.white,
          height: 38,
          width: MediaQuery.of(context).size.width / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                svgpath,
                height: 19,
                color: greyColor,
              ),
              SizedBox(
                height: 3
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: greyColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  } 
}
