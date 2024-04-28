import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/core/utils/app_assets/app_assets.dart';
import 'package:news_cloud/features/home/data/models/category_model.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/categoryCard.dart';


class CategoriesListView extends StatelessWidget{
  const CategoriesListView({super.key});
  final List<CategoryModel> categories= const[
    CategoryModel(image: AppImages.technology, categoryName: 'Technology'),
    CategoryModel(image: AppImages.science, categoryName: 'Science'),
    CategoryModel(image: AppImages.health , categoryName: 'Health'),
    CategoryModel(image: AppImages.business , categoryName: 'Business'),
    CategoryModel(image: AppImages.sports , categoryName: 'Sports'),
    CategoryModel(image: AppImages.entertaiment , categoryName: 'Entertainment'),
    CategoryModel(image: AppImages.general),
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