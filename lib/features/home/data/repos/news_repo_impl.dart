import 'package:news_cloud/core/utils/api_service.dart';
import 'package:news_cloud/features/home/data/models/article_model.dart';
import 'package:news_cloud/features/home/data/repos/news_repo.dart';

class NewsRepoImpl implements NewsRepo{
  final ApiService apiService;
  final String _apiKey='ea49fee472b74be9a1333d1961a9912c';

  NewsRepoImpl({required this.apiService});
  @override
  Future<List<ArticleModel>> getGeneralNews({required String category})async{
    try{
      var data = await apiService.get(endPoint: 'top-headlines?apiKey=$_apiKey&country=us&category=$category');
      Map<String,dynamic> jsonData=data;
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