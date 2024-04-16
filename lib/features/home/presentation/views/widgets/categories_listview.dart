import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/core/utils/assets_app.dart';
import 'package:news_cloud/features/home/data/models/category_model.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/categoryCard.dart';


class CategoriesListView extends StatelessWidget{
  const CategoriesListView({super.key});
  final List<CategoryModel> categories= const[
    CategoryModel(image: ImagesAPP.technology, categoryName: 'Technology'),
    CategoryModel(image: ImagesAPP.science, categoryName: 'Science'),
    CategoryModel(image: ImagesAPP.health , categoryName: 'Health'),
    CategoryModel(image: ImagesAPP.business , categoryName: 'Business'),
    CategoryModel(image: ImagesAPP.sports , categoryName: 'Sports'),
    CategoryModel(image: ImagesAPP.entertaiment , categoryName: 'Entertainment'),
    CategoryModel(image: ImagesAPP.general),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>CategoryCard(category: categories[index])
      ),
    );
  }

}