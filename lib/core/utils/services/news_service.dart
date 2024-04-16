import 'package:dio/dio.dart';
import 'package:news_cloud/features/home/data/models/article_model.dart';
class NewsService {

  final Dio _dio;
  NewsService(this._dio);
  final String _baseUrl='https://newsapi.org/v2/';
  final String _apiKey='ea49fee472b74be9a1333d1961a9912c';

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try{
      final response = await _dio.get('${_baseUrl}top-headlines?apiKey=$_apiKey&country=us&category=$category');
      Map<String,dynamic> jsonData=response.data;
      //List<dynamic> articles = jsonData['articles'] ;
      List<ArticleModel> articlesList=[];

      for (var article in jsonData['articles']){
        ArticleModel articleModel=ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch(e){
      return[];
    }
  }
}
