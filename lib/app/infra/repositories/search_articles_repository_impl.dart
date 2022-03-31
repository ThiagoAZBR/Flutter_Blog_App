import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_blog_app/app/infra/datasources/search_articles_data_source.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/shared/errors/error_messages.dart';
import 'package:flutter_blog_app/app/shared/errors/errors.dart';

class SearchArticlesRepositoryImpl implements SearchArticlesRepository {
  final SearchArticlesDataSource _searchArticleDataSource;

  SearchArticlesRepositoryImpl(SearchArticlesDataSource searchArticleDataSource)
      :
        _searchArticleDataSource = searchArticleDataSource;

  @override
  Future<Either<Exception, NYTimesSearch>> searchArticles(
      SearchArticlesParams params) async {
    try {
      final searchResult =
          await _searchArticleDataSource.searchArticles(params);
      return Right(searchResult);
    } on DioError catch (e) {
      return Left(e);
    } on SearchFailed {
      return Left(SearchFailed(ErrorMessages.wrongSubject));
    }
  }
}
