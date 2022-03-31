import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';

abstract class SearchArticlesRepository {
  Future<Either<Exception, List<NYTimesArticle>>> searchArticles(SearchArticlesParams params);
}
