import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_tile.dart';
import '../models/article_model.dart';

class NewsListView extends StatelessWidget{
  List<ArticleModel> articles=[];
   NewsListView({super.key,required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => NewsTile(articleModel: articles[index])));
  }
}
