import 'package:dio/dio.dart';
import 'package:news_cloud/constants.dart';
import 'package:news_cloud/features/home/data/models/article_model.dart';
class NewsService {

  final Dio _dio;
  NewsService(this._dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try{
      final response = await _dio.get('${kBaseUrl}top-headlines?apiKey=$kApiKey&country=us&category=$category');
      Map<String,dynamic> jsonData=response.data;
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
