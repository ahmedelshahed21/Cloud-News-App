import 'package:flutter/material.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget{
  final String category;
  const CategoryView({super.key,required this.category});
  static String id='CategoryView';
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text(category,
        style: const TextStyle(
          color: Colors.blueGrey,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.orange,
        size: 30
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(category: category)
        ],
      ),
    ),
  );
  }



}