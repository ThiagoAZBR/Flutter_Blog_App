import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';

class NYTimesSearchMapper {
  static NYTimesSearch fromJson(Map json) {
    return NYTimesSearch(
        status: json['status'],
        copyright: json['copyright'],
        response: json['response']);
  }
}
