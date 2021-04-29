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
    backgroundColor: Colors.black,
    icon: FontAwesomeIcons.rocket,  //

  ),
  Category(
    questions: hakkinda,
    categoryName: 'Hakkında',
    backgroundColor: Colors.deepPurpleAccent,
    icon: FontAwesomeIcons.book,

  ),


];
