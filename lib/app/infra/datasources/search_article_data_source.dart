import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';

abstract class SearchArticlesDataSource {
  Future<NYTimesSearch> searchArticles(
      SearchArticleParams params);
}