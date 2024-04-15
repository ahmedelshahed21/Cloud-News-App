import 'package:flutter/material.dart';
import 'package:news_app/features/presentation/views/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget{
  final String category;
  const CategoryView({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      iconTheme: const IconThemeData(
        color: Colors.orange,
        size: 36
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