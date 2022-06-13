import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tokopedia_ui/home/widget/custom_topBar.dart';
import 'package:tokopedia_ui/home/widget/flash_sale.dart';
import 'package:tokopedia_ui/home/widget/menu_button.dart';
import 'package:tokopedia_ui/home/widget/menutbottom.dart';
import 'package:tokopedia_ui/home/widget/buttonappbar.dart';
import 'package:tokopedia_ui/home/widget/menutop.dart';
import 'package:tokopedia_ui/home/widget/slideritem.dart';
import 'package:tokopedia_ui/home/widget/servicesIcon.dart';
import 'package:tokopedia_ui/models/location_services.dart';
import 'package:tokopedia_ui/theme.dart';
import 'package:curved_animation_controller/curved_animation_controller.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();

  late CurvedAnimationController<Color> _animationBackground;
  late CurvedAnimationController<Color> _animationInput;
  late CurvedAnimationController<Color> _animationIcon;

  double get _systemBarHeight => MediaQuery.of(context).padding.top;
  double get _appBarHeight => kToolbarHeight + _systemBarHeight;
  double get _appBarPaddingVertical => 10;
  double get _appBarPaddingTop => _systemBarHeight + _appBarPaddingVertical;
  double get _appBarPaddingBottom => _appBarPaddingVertical;

  Color _appbarBackgroundColorBegin = primaryColor.withOpacity(1);
  Color _appbarBackgroundColorEnd = Colors.white;

  Color _inputBackgroundColorBegin = Colors.white.withOpacity(0.92);
  Color _inputBackgroundColorEnd = Color(0xFFEFEFEF);

  Color _iconColorBegin = Colors.white.withOpacity(0.92);
  Color _iconColorEnd = Colors.grey;

  @override
  void initState() {
    _initAnimation();
    LocationServices().getCoordinate();
    super.initState();
    _initScroll();
  }

  _initAnimation() {
    _animationBackground = CurvedAnimationController<Color>.tween(
      ColorTween(
          begin: _appbarBackgroundColorBegin, end: _appbarBackgroundColorEnd),
      Duration(milliseconds: 200),
      curve: Curves.ease,
      vsync: this,
    );

    _animationInput = CurvedAnimationController<Color>.tween(
      ColorTween(
          begin: _inputBackgroundColorBegin, end: _inputBackgroundColorEnd),
      Duration(milliseconds: 300),
      curve: Curves.ease,
      vsync: this,
    );

    _animationIcon = CurvedAnimationController<Color>.tween(
      ColorTween(begin: _iconColorBegin, end: _iconColorEnd),
      Duration(milliseconds: 300),
      curve: Curves.ease,
      vsync: this,
    );

    _animationBackground.addListener(() => setState(() {}));
    _animationInput.addListener(() => setState(() {}));
    _animationIcon.addListener(() => setState(() {}));
  }

  _initScroll() {
    _scrollController.addListener(() {
      double startAnimationAfterOffset = 5;
      double scrollOffsetBackground = 150;
      double scrollOffsetInput = 150;
      double scrollOffsetIcon = 120;

      // delay animation to start animate only after scrolling
      // as far as startAnimationAfterOffset value
      // this is for a smoother effect
      double offset = _scrollController.offset - startAnimationAfterOffset;
      double progressBackground = offset / scrollOffsetBackground;
      double progressInput = offset / scrollOffsetInput;
      double progressIcon = offset / scrollOffsetIcon;

      // make sure progress animation always between 0.0 and 1.0
      progressBackground = progressBackground <= 0.0 ? 0.0 : progressBackground;
      progressBackground = progressBackground >= 1.0 ? 1.0 : progressBackground;

      // make sure progress animation always between 0.0 and 1.0
      progressInput = progressInput <= 0.0 ? 0.0 : progressInput;
      progressInput = progressInput >= 1.0 ? 1.0 : progressInput;

      // make sure progress animation always between 0.0 and 1.0
      progressIcon = progressIcon <= 0.0 ? 0.0 : progressIcon;
      progressIcon = progressIcon >= 1.0 ? 1.0 : progressIcon;

      _animationBackground.progress = progressBackground;
      _animationInput.progress = progressInput;
      _animationIcon.progress = progressIcon;
    });
  }
  // void initState() {
  //   super.initState();
  //   LocationServices().getCoordinate();
  // }

  Widget get _appbar => Container(
        height: _appBarHeight,
        padding: EdgeInsets.only(
          top: _appBarPaddingTop,
          bottom: _appBarPaddingBottom,
        ),
        color: _animationBackground.value,
        child: Row(
          children: [
            SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                  color: _animationInput.value,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: TextField(
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                    ),
                  ),
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
            ),
            SizedBox(width: 13),
            IconButton(
              icon: Icon(Icons.favorite, color: _animationIcon.value),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.mail, color: _animationIcon.value),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  Icon(Icons.notifications_active, color: _animationIcon.value),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget get _content => SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: 3000,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xffE3E4E8),
                    Color(0xffADCE0),
                  ])),
              child: Stack(
                children: [
                  ClipPath(
                    clipper: ClipPathClass(),
                    child: Container(
                      height: 200,
                      color: primaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 90),
                    child: Column(children: [
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
                      
                      ServiceIcon(),
                      SizedBox(height: 10),
                      Menutop(),
                      SliderItem(),
                      SizedBox(height: 10),
                      Menubottom(),
                      SizedBox(height: 10),
                      FlashSale()
                    ]),
                  )
                ],
              ),
            ),
            // Container(height: 1, color: Color(0xFF000046)),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _content,
          _appbar,
        ],
      ),
    );
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
