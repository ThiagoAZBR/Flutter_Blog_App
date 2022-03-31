import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/infra/datasources/search_articles_data_source.dart';
import 'package:flutter_blog_app/app/infra/repositories/search_articles_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class SearchArticlesDataSourceMock extends Mock
    implements SearchArticlesDataSource {}

void main() {
  SearchArticlesDataSource dataSource = SearchArticlesDataSourceMock();
  SearchArticlesRepository repository =
      SearchArticlesRepositoryImpl(dataSource);

  final SearchArticlesParams params =
      SearchArticlesParams(subject: 'technology');
  List<NYTimesArticle> _nyTimesArticles = <NYTimesArticle>[
    NYTimesArticle(
        title: 'title', webUrl: 'webUrl', publishingDate: 'publishingDate', leadParagraph: 'lead_paragraph')
  ];

  test('Search articles repository impl must return Right', () async {
    when(() => dataSource.searchArticles(params))
        .thenAnswer((_) async => _nyTimesArticles);

    final result = await repository.searchArticles(params);

    expect(result, isA<Right>());
  });
}
