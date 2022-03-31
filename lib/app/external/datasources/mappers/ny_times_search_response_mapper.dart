import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search_response.dart';
import 'package:flutter_blog_app/app/external/datasources/mappers/ny_times_article_mapper.dart';

class NYTimesSearchResponseMapper {
  static NYTimesSearchResponse fromJson(Map json) {
    List<NYTimesArticle> _nyTimesArticles = <NYTimesArticle>[];
    for (var article in json['docs'] as List) {
      _nyTimesArticles.add(NYTimesArticleMapper.fromJson(article));
    }
    return NYTimesSearchResponse(docs: _nyTimesArticles, meta: json['meta']);
  }
}
