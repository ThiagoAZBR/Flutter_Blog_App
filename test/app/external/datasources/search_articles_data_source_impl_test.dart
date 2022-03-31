import 'package:dio/dio.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/external/datasources/search_articles_data_source_impl.dart';
import 'package:flutter_blog_app/app/infra/datasources/search_articles_data_source.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  SearchArticlesDataSource dataSource = SearchArticlesDataSourceImpl(Dio());

  final SearchArticlesParams params = SearchArticlesParams(subject: 'technology');

  test('Search articles data source impl must return NYTimesSearch', () async {
    final result = await dataSource.searchArticles(params);

    expect(result, isA<NYTimesSearch>());
  });
}
