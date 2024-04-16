import 'package:news_cloud/features/home/data/models/article_model.dart';

abstract class NewsRepo {
  Future<List<ArticleModel>> getGeneralNews({required String category});
}