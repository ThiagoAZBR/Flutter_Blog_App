import 'package:flutter_blog_app/app/infra/datasources/search_article_data_source.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';

class SearchArticlesDataSourceImpl implements SearchArticlesDataSource {
  @override
  Future<NYTimesSearch> searchArticles(SearchArticleParams params) {
    // TODO: implement searchArticles
    throw UnimplementedError();
  }
}