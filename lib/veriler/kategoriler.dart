import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:denemeodev/veriler/sorular.dart';
import 'package:denemeodev/model/kategori.dart';

import 'hak.dart';

final kategoriler = <Category>[
  Category(
    questions: sorular,
    categoryName: 'Bil Bakalım',
    imageUrl: 'assets/images/fizik.png',
    backgroundColor: Colors.black,
    icon: FontAwesomeIcons.rocket,
    description: 'Fizik Soruları',
  ),
  Category(
    questions: hakkinda,
    categoryName: 'Hakkında',
    backgroundColor: Colors.deepPurpleAccent,
    icon: FontAwesomeIcons.book,
    description: 'Hakkında',
  ),

];
