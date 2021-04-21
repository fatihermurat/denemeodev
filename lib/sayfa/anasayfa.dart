import 'package:flutter/material.dart';
import 'package:denemeodev/veriler/kategoriler.dart';
import 'package:denemeodev/veriler/kullanıcı.dart';
import 'package:denemeodev/sayfa/kategori_sayfası.dart';
import 'package:denemeodev/widget/kategori_widgetleri.dart';
import 'package:denemeodev/widget/kategori_anasayfa_widgetleri.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text('Sorular'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(80), //üst header ksımının yüksekliğini ayarlar
        child: Container(
          padding: EdgeInsets.all(16),
          alignment: Alignment.centerLeft,
          child: buildWelcome(username),
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.cyan],
            begin: Alignment.topLeft, //rengi sol tarafda göstermek için
            end: Alignment.bottomRight, //sağ kısımda daha dolgun gözükmesi için
          ),
        ),
      ),
      actions: [
        Icon(Icons.book),
        SizedBox(width: 12),
      ],
    ),
    body: ListView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        SizedBox(height: 8),
        buildCategories(),
        SizedBox(height: 32),
        buildPopular(context),
      ],
    ),
  );

  Widget buildWelcome(String username) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Hoşgeldin',
        style: TextStyle(fontSize: 16, color: Colors.yellow),
      ),
      Text(
        username,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      )
    ],
  );

  Widget buildCategories() => Container(
    height: 300,
    child: GridView(
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, //sayfada kaç butonun olacağını gösterir yan yanamı alt altamı
        childAspectRatio: 8 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: kategoriler
          .map((category) => CategoryHeaderWidget(category: category))
          .toList(),
    ),
  );

  Widget buildPopular(BuildContext context) => Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Diğer',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 5),
      Container(
        height: 300,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical, //kategorinin yataymı dikeymi olacağını seçiyoruz
          children: kategoriler
              .map((category) => CategoryDetailWidget(
            category: category,
            onSelectedCategory: (category) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    CategoryPage(category: category),
              ));
            },
          ))
              .toList(),
        ),
      )
    ],
  );
}
