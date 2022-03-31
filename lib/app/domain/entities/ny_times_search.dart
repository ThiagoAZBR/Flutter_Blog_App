import 'package:flutter_blog_app/app/domain/entities/ny_times_search_response.dart';

class NYTimesSearch {
  final String status;
  final String copyright;
  final NYTimesSearchResponse response;

  NYTimesSearch(
      {required this.status, required this.copyright, required this.response});
}
