import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'sorular.dart';

class Category {
  final String categoryName;
  final String description; //açıklama
  final Color backgroundColor; //arkaplan rengi
  final IconData icon; //logo vs ikonlar
  final List<Question> questions;
  final String imageUrl;

  Category({
    @required this.imageUrl,
    @required this.questions,
    @required this.categoryName,
    this.description = '',
    this.backgroundColor = Colors.white,
    this.icon = FontAwesomeIcons.question,
  });
}
