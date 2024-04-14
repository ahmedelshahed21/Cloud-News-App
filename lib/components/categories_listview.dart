import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/categoryCard.dart';
import 'package:news_app/models/category_model.dart';

class CategoriesListView extends StatelessWidget{
  const CategoriesListView({super.key});
  final List<CategoryModel> categories= const[
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/general.png', categoryName: 'General'),
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