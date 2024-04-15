import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets_app.dart';
import 'package:news_app/features/presentation/views/widgets/categoryCard.dart';
import 'package:news_app/features/data/models/category_model.dart';

class CategoriesListView extends StatelessWidget{
  const CategoriesListView({super.key});
  final List<CategoryModel> categories= const[
    CategoryModel(image: AssetsAPP.technology, categoryName: 'Technology'),
    CategoryModel(image: AssetsAPP.science, categoryName: 'Science'),
    CategoryModel(image: AssetsAPP.health , categoryName: 'Health'),
    CategoryModel(image: AssetsAPP.business , categoryName: 'Business'),
    CategoryModel(image: AssetsAPP.entertaiment , categoryName: 'Entertaiment'),
    CategoryModel(image: AssetsAPP.general , categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context,index)=>CategoryCard(category: categories[index])
      ),
    );
  }

}