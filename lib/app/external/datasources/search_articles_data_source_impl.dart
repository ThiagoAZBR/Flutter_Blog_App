import 'package:dio/dio.dart';
import 'package:flutter_blog_app/app/external/datasources/mappers/ny_times_search_mapper.dart';
import 'package:flutter_blog_app/app/infra/datasources/search_article_data_source.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/shared/app_urls.dart';
import 'package:flutter_blog_app/app/shared/auth/secrets.dart';

class SearchArticlesDataSourceImpl implements SearchArticlesDataSource {
  final Dio _dio;

  SearchArticlesDataSourceImpl(Dio dio) : _dio = dio;

  @override
  Future<NYTimesSearch> searchArticles(SearchArticleParams params) async {
    final searchResponse = await _dio.get(AppUrls.nyTimesArticleSearch,
        queryParameters: {'q': params.subject, 'api-key': apiKey});

    return handleResponse(searchResponse);
  }

  NYTimesSearch handleResponse(Response searchResponse) {
    if (searchResponse.statusCode == 200) {
      return NYTimesSearchMapper.fromJson(searchResponse.data);
    }

    throw Exception();
  }
}
