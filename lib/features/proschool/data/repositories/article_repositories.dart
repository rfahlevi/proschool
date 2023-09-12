import 'package:dartz/dartz.dart';

import '../datasources/article_datasource.dart';
import '../models/response/article_response_model.dart';

class ArticleRepository {
  final _articleDatasource = ArticleDatasource();

  Future<Either<String, ArticleResponseModel>> getArticles() async {
    return _articleDatasource.getArticles();
  }
}
