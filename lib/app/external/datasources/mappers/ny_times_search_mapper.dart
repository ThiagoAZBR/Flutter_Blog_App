import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/external/datasources/mappers/ny_times_search_response_mapper.dart';

class NYTimesSearchMapper {
  static NYTimesSearch fromJson(Map json) {
    return NYTimesSearch(
        status: json['status'],
        copyright: json['copyright'],
        response: NYTimesSearchResponseMapper.fromJson(json['response']));
  }
}
