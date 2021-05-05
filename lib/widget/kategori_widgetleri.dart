import 'package:flutter/material.dart';
import 'package:denemeodev/model/kategori.dart';
//alt kısım bil bakalım hakkında
class CategoryDetailWidget extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onSelectedCategory;

  const CategoryDetailWidget({
    Key key,
    @required this.category,
    @required this.onSelectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(  //Hareketleri algılayan bir widget. kapsadığı alanı dokunmaya duyarlı hale getirir.
    onTap: () => onSelectedCategory(category),
    child: Container(
      


    ),
  );


}
