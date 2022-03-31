import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';

class NYTimesArticleMapper {
  static NYTimesArticle fromJson(Map json) {
    return NYTimesArticle(
        title: json['abstract'],
        webUrl: json['web_url'],
        publishingDate: json['pub_date'],
        leadParagraph: json['lead_paragraph']);
  }
}
