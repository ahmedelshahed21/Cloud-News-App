import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/presentation/views/widgets/news_listview.dart';
import 'package:news_app/features/data/models/article_model.dart';
import 'package:news_app/core/utils/services/news_service.dart';
import 'package:news_app/features/presentation/views/widgets/shimmer_loading.dart';

class NewsListViewBuilder extends StatefulWidget{
  final String category;
  const NewsListViewBuilder({super.key,required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future=NewsService(Dio()).getGeneralNews(category: widget.category);
    //future=NewsRepoImpl(apiService: ApiService(Dio())).getGeneralNews(category: widget.category);

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
                child: ShimmerLoading()
              );
         }
      }
    );
  }
}

