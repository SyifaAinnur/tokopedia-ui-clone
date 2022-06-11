import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tokopedia_ui/home/widget/custom_topBar.dart';
import 'package:tokopedia_ui/home/widget/menu_button.dart';
import 'package:tokopedia_ui/home/widget/menutbottom.dart';
import 'package:tokopedia_ui/home/widget/menutop.dart';
import 'package:tokopedia_ui/home/widget/slideritem.dart';
import 'package:tokopedia_ui/home/widget/servicesIcon.dart';
import 'package:tokopedia_ui/models/location_services.dart';
import 'package:tokopedia_ui/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    LocationServices().getCoordinate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xffE3E4E8),
                Color(0xffADCE0),
              ])),
          child: Stack(children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 200,
                color: primaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: CustomAppBar(),
            ),
            Container(
              child: ListView(children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 14,
                              color: whiteColor,
                            ),
                            Text(
                              "Dikirim ke",
                              style: TextStyle(color: whiteColor, fontSize: 12),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 5),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: FutureBuilder(
                                future: LocationServices().getCoordinate(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Expanded(
                                        child: Text(
                                      snapshot.data.toString(),
                                      softWrap: true,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        height: 1,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ));
                                  } else {
                                    return Text(
                                      "Loading...",
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    );
                                  }
                                },
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 15,
                              color: whiteColor,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: ServiceIcon(),
                      ),
                      SizedBox(height: 5),
                      Positioned(
                        top: 10,
                        child: Menutop(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: SliderItem(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Menubottom(),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
