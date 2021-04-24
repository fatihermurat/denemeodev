import 'package:flutter/material.dart';
import 'package:denemeodev/model/kategori.dart';
//alt kısımbil bakalım hakkında
class CategoryDetailWidget extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onSelectedCategory;

  const CategoryDetailWidget({
    Key key,
    @required this.category,
    @required this.onSelectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => onSelectedCategory(category),
    child: Container(
      padding: EdgeInsets.only(right: 5),
      width: MediaQuery.of(context).size.width * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImage(),
          SizedBox(height: 20),
          Text(
            category.categoryName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            category.description,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    ),
  );

  Widget buildImage() => Container(   //diğer kısımda bulunan butonlar
    height: 50,
    decoration: BoxDecoration(
      color: category.backgroundColor,
      borderRadius: BorderRadius.circular(10),
      //image: DecorationImage(image: AssetImage(category.imageUrl)),
    ),
  );
}
