import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:denemeodev/veriler/sorular.dart';
import 'package:denemeodev/model/kategori.dart';
//anasayfada mevcut butonları eklemek için
import 'hakkında.dart';

final kategoriler = <Category>[
  Category(
    questions: sorular,
    categoryName: 'Bil Bakalım',
    backgroundColor: Colors.black,  //butonların üzerindeki ikonların rengi
    icon: FontAwesomeIcons.rocket,  //butonların üzerindeki roket ikonu

  ),
  Category(
    questions: hakkinda,
    categoryName: 'Hakkında',
    backgroundColor: Colors.deepPurpleAccent, //butonların üzerindeki ikon rengi
    icon: FontAwesomeIcons.book, //butonların üzerindeki kitap ikonu

  ),


];
