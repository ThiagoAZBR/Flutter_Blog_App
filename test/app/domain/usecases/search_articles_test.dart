import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class SearchArticleRepositoryMock extends Mock
    implements SearchArticlesRepository {}

void main() {
  final SearchArticlesRepository searchArticleRepository =
      SearchArticleRepositoryMock();
  final SearchArticlesUseCase searchArticleUseCase =
      SearchArticlesUseCase(searchArticleRepository);

  final SearchArticlesParams params = SearchArticlesParams(subject: 'technology');
  List<NYTimesArticle> _nyTimesArticles = <NYTimesArticle>[
    NYTimesArticle(
        title: 'title', webUrl: 'webUrl', publishingDate: 'publishingDate', leadParagraph: 'lead_paragraph')
  ];

  test('Must return New York times API data (Right)', () async {
    when(() => searchArticleRepository.searchArticles(params)).thenAnswer(
      (_) async => Right(
        _nyTimesArticles,
      ),
    );

    final nyTimesApiResult =
        await searchArticleUseCase(params);

    expect(nyTimesApiResult, isA<Right>());
  });
}
