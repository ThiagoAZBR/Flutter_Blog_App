import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';

class NYTimesSearchResponse {
  final List<NYTimesArticle> docs;
  final Map meta;

  NYTimesSearchResponse({required this.docs, required this.meta});
}
