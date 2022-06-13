import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokopedia_ui/theme.dart';

class Bottombar extends StatefulWidget {


  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  int bottomNavbarIndex;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavbarIndex = 0;
    pageController = PageController(initialPage: bottomNavbarIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: (bottomNavbarIndex == 3)
                    ? Colors.transparent
                    : Colors.black.withOpacity(0.05),
                spreadRadius: 5,
                blurRadius: 20,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: mainColor,
            unselectedItemColor: accentColor3,
            showUnselectedLabels: true,
            currentIndex: bottomNavbarIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                bottomNavbarIndex = index;
                pageController.jumpToPage(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                label: 
                  "Home",
                  
                icon: Container(
                  height: 24,
                  margin: EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset((bottomNavbarIndex == 0)
                      ? "assets/category-icon/home_selected.svg"
                      : "assets/category-icon/home.svg"),
                ),
              ),
              BottomNavigationBarItem(
                label: 
                  "Feed",
                  
                icon: Container(
                  height: 24,
                  margin: EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset((bottomNavbarIndex == 1)
                      ? "assets/category-icon/feed_selected.svg"
                      : "assets/category-icon/feed.svg"),
                ),
              ),
              BottomNavigationBarItem(
                label:
                  "Official Store",
                  
                icon: Container(
                  height: 24,
                  margin: EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset((bottomNavbarIndex == 2)
                      ? "assets/category-icon/official_selected.svg"
                      : "assets/category-icon/official.svg"),
                ),
              ),
              BottomNavigationBarItem(
                label: 
                  "Keranjang",
                  
                icon: Container(
                  height: 24,
                  margin: EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset(
                    (bottomNavbarIndex == 3)
                        ? "assets/category-icon/keranjang_selected.svg"
                        : "assets/category-icon/keranjang.svg",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 
                  "Akun",
                icon: Container(
                  margin: EdgeInsets.only(bottom: 2),
                  height: 24,
                  child: SvgPicture.asset(
                    (bottomNavbarIndex == 4)
                        ? "assets/category-icon/akun_selected.svg"
                        : "assets/category-icon/akun.svg",
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}