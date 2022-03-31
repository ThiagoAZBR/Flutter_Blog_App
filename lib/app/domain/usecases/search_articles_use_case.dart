import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/usecase.dart';

class SearchArticlesUseCase
    implements UseCase<List<NYTimesArticle>, SearchArticlesParams> {
  final SearchArticlesRepository _searchArticleRepository;

  SearchArticlesUseCase(SearchArticlesRepository searchArticleRepository)
      : _searchArticleRepository = searchArticleRepository;

  @override
  Future<Either<Exception, List<NYTimesArticle>>> call(
      SearchArticlesParams params) async {
    return await _searchArticleRepository.searchArticles(params);
  }
}

class SearchArticlesParams {
  final String subject;

  SearchArticlesParams({required this.subject});
}
