import 'package:flutter/material.dart';
import 'package:aplikasi/olahraga.dart';
import 'package:aplikasi/imt.dart';
import 'package:aplikasi/edukasi.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> catNames = ["BMI", 'OLAHRAGA', 'ARTICLE'];

  final List<Color> catColors = [
    Color(0xFFFFA726),
    Color(0xFF66BB6A),
    Color(0xFF42A5F5),
  ];

  final List<Icon> catIcons = [
    Icon(Icons.calculate, color: Colors.white, size: 35),
    Icon(Icons.fitness_center, color: Colors.white, size: 35),
    Icon(Icons.menu_book, color: Colors.white, size: 35),
  ];

  final List<String> imgList = [
    'Sayuran',
    'Buah-Buahan',
    'Daging dan telur',
    'Tahu & Tempe',
    'Makanan Laut',
    'Susu'
  ];

  final Map<String, String> manfaatMakanan = {
    'Sayuran':
        'Sayuran kaya akan serat yang baik untuk pencernaan, serta mengandung berbagai vitamin dan mineral penting seperti vitamin A, C, K, serta zat besi dan kalium yang mendukung kesehatan tubuh secara keseluruhan.',
    'Buah-Buahan':
        'Buah mengandung antioksidan yang melindungi sel dari kerusakan akibat radikal bebas, serta kaya akan serat untuk menjaga kesehatan pencernaan. Vitamin dalam buah, seperti vitamin C dan E, juga meningkatkan daya tahan tubuh dan menjaga kesehatan kulit.',
    'Daging dan Telur':
        'Daging merupakan sumber protein hewani yang membantu membangun dan memperbaiki jaringan otot, sedangkan telur kaya akan kolin yang mendukung kesehatan otak. Daging merah mengandung zat besi yang penting untuk mencegah anemia, sementara daging ayam memiliki protein tinggi dengan lemak yang lebih rendah.',
    'Tahu & Tempe':
        'Tahu dan tempe merupakan sumber protein nabati yang kaya akan isoflavon, yang berperan dalam menjaga keseimbangan hormon. Tempe juga mengandung probiotik alami yang baik untuk kesehatan usus dan pencernaan.',
    'Makanan Laut':
        'Makanan laut, seperti ikan salmon, tuna, dan sarden, mengandung asam lemak omega-3 yang sangat penting untuk perkembangan otak dan menjaga kesehatan jantung. Selain itu, makanan laut kaya akan yodium yang mendukung fungsi tiroid dan selenium yang berperan sebagai antioksidan.',
    'Susu':
        'Susu mengandung kalsium dan vitamin D yang penting untuk menjaga kepadatan tulang dan gigi. Selain itu, susu juga kaya akan protein, membantu pertumbuhan otot, serta mengandung probiotik alami yang mendukung kesehatan pencernaan.',
  };

  void navigateToPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = IMTPage();
        break;
      case 1:
        page = OlahragaPage();
        break;
      case 2:
        page = EdukasiPage();
        break;
      default:
        page = HomePage();
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.redAccent, Colors.orangeAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Text(
                    "HI SOBAT WELLNESSZONE",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset("images/kesehatan1.png",
                      width: 250, height: 250),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => navigateToPage(context, index),
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: catColors[index],
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(child: catIcons[index]),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          catNames[index],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 20),
                Text(
                  "Pilihan Makanan Sehat",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Manfaat ${imgList[index]}'),
                            content: Text(manfaatMakanan[imgList[index]]!),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Tutup"),
                              ),
                            ],
                          );
                        },
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  width:
                                      150, // Atur ukuran lebar gambar sesuai keinginan
                                  height:
                                      180, // Atur ukuran tinggi gambar sesuai keinginan
                                  child: Image.asset(
                                    "images/${imgList[index]}.png",
                                    fit: BoxFit
                                        .contain, // Sesuaikan cara gambar diatur dalam box
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                imgList[index],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
