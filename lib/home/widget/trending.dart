import 'package:flutter/material.dart';

class trending extends StatelessWidget {
  const trending({Key? key}) : super(key: key);

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
                      "Lagi Trending nih",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Muat ulang",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.refresh,
                      color: Colors.green,
                    )
                    
                  ],
                ),
              ),
            ],
          ),

          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    cards(context),
                    cards(context)
                  ],
                ),
                Row(
                  children: [
                    cards(context),
                    cards(context)
                  ],
                )
              ],
            ),
          ),
          //Items
        ],
      ),
    );
  }
}

Widget cards(BuildContext context) {
  return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Stack(children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            productIcon(),
                            SizedBox(
                              height: 10,
                            ),
                            productName(),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          )
        ]),
      ));
}

Widget productIcon() {
  return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Image.asset("assets/product/hp.jpg", width: 50),
      ));
}

Widget productName() {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        text: 'Redmi 10c 4 64',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
        children: <TextSpan>[
          TextSpan(
              text: '\n1,1rb produk',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}
