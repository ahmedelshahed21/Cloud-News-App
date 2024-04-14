import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_listview.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';

class NewsListViewBuilder extends StatefulWidget{
  final String category;
  const NewsListViewBuilder({super.key,required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    future=NewsServices(Dio()).getGeneralNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context,snapshot){

          if (snapshot.hasData)
            {
              return NewsListView(articles: snapshot.data!);
            }
          else if(snapshot.hasError)
            {
              return const SliverToBoxAdapter(child: Center(child: Text('Error !')));
            }
          else
           {
           return const SliverToBoxAdapter(
               child: SizedBox(
                 height: 450,
               child: Center(
                   child: CircularProgressIndicator(
                     color: Colors.orange,
                 backgroundColor: Colors.black,
                 )
               )
             )
           );
         }
      }
    );
  }
}