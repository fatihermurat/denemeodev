import 'package:flutter/material.dart';
import 'package:denemeodev/veriler/kategoriler.dart';
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
        preferredSize: Size.fromHeight(20), //üst header ksımının yüksekliğini ayarlar
        child: Container(
          padding: EdgeInsets.all(16),
          alignment: Alignment.centerLeft,

        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.cyan], //karmaşık renkler
            begin: Alignment.topLeft, //rengi sol tarafda göstermek için
            end: Alignment.bottomRight, //sağ kısımda daha dolgun gözükmesi için
          ),
        ),
      ),
      actions: [
      ],
    ),
    body: ListView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        SizedBox(height: 1),
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
    height: 1000,
    child: GridView(
      primary: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, //sayfada kaç butonun olacağını gösterir yan yanamı alt altamı
        childAspectRatio: 2 / 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 10,
      ),
      children: kategoriler
          .map((category) => CategoryHeaderWidget(category: category))
          .toList(),
    ),
  );

  Widget buildPopular(BuildContext context) => Column(  //kategori alt kısım tamamlanmadı
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          '',
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
