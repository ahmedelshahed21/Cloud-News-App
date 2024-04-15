import 'package:flutter/material.dart';
import 'package:news_app/features/data/models/category_model.dart';
import 'package:news_app/features/presentation/views/category_view.dart';

class CategoryCard extends StatelessWidget{
  const CategoryCard({super.key,required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) {
                return CategoryView(category: category.categoryName);
              }));
        },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: AspectRatio(
          aspectRatio: 7/5,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
                child: Text(category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}