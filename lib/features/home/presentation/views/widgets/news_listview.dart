import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/features/home/data/models/article_model.dart';
import 'package:news_cloud/features/home/presentation/views/widgets/news_tile.dart';



class NewsListView extends StatelessWidget{
  List<ArticleModel> articles=[];
   NewsListView({super.key,required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => NewsTile(article: articles[index])));
  }
}
