import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles.dart';

abstract class SearchArticleRepository {
  Future<Either<Exception, NYTimesSearch>> searchArticles(SearchArticleParams params);
}
