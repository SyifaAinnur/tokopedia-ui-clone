import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        //widget yang akan ditampilkan dalam 1 baris adalah 2
        crossAxisCount: 2,
        children: [
          //card ditampilkan disini
          //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
          CustomCard(
              title: "Judul Card Kedua",
              image:
                  "https://cdn.pixabay.com/photo/2018/02/01/14/09/yellow-3123271_960_720.jpg"),
          CustomCard(
              title: "Judul Card Ketiga",
              image:
                  "https://cdn.pixabay.com/photo/2016/08/27/14/38/mountains-1624284__340.jpg"),
          CustomCard(
              title: "Judul Card Keempat",
              image:
                  "https://cdn.pixabay.com/photo/2016/11/29/02/23/cliffs-1866832__340.jpg"),
          CustomCard(
              title: "Judul Card Kelima",
              image:
                  "https://cdn.pixabay.com/photo/2016/09/18/23/23/sugarloaf-mountain-1679285__340.jpg"),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
    
      //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
      //parameter ini akan mengisi title dan gambar pada setiap card
      CustomCard({required this.title, required this.image});
    
      String title;
      String image;
    
      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            //menambahkan bayangan
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(title),
                )
              ],
            ),
          ),
        );
      }
    }
