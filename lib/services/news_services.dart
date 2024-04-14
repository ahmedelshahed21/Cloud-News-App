import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';
class NewsServices {

  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try{
      final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=ea49fee472b74be9a1333d1961a9912c&country=us&category=$category');
      Map<String,dynamic> jsonData=response.data;
      List<dynamic> articles = jsonData['articles'] ;
      List<ArticleModel> articlesList=[];

      for (var article in articles){
        ArticleModel articleModel=ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch(e){
      return[];
    }
  }
}