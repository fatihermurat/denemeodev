import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:denemeodev/model/kategori.dart';
import 'package:denemeodev/sayfa/kategori_sayfası.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CategoryPage(category: category),
    )),
    child: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: category.backgroundColor,
        borderRadius: BorderRadius.circular(1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(category.icon, color: Colors.white, size: 36),
          const SizedBox(height: 2),
          Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )
        ],
      ),
    ),
  );
}
