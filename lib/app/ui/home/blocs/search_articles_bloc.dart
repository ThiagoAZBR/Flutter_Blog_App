import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/shared/app_urls.dart';
import 'package:flutter_blog_app/app/ui/home/blocs/states/search_articles_state.dart';

class SearchArticlesBloc extends Cubit<SearchArticlesState> {
  final SearchArticlesUseCase _searchArticleUseCase;
  List<NYTimesArticle> listOfArticles = <NYTimesArticle>[];
  Map<int, String> months = {
    01: 'Jan',
    02: 'Feb',
    03: 'March',
    04: 'April',
    05: 'May',
    06: 'June',
    07: 'July',
    08: 'Aug',
    09: 'Sept',
    10: 'Oct',
    11: 'Nov',
    12: 'Dec',
  };

  SearchArticlesBloc(SearchArticlesUseCase searchArticleUseCase)
      : _searchArticleUseCase = searchArticleUseCase,
        super(const SearchArticlesStateLoading());

  Future<void> searchArticles(SearchArticlesParams params, BuildContext context) async {
    emit(const SearchArticlesStateLoading());

    final articles = await _searchArticleUseCase(params);

    articles.fold((failure) {
      emit(const SearchArticlesStateError());
      Navigator.pushNamed(context, AppUrls.errorPageUrl);
    }, (data) {
      listOfArticles = data;
      emit(const SearchArticlesStateNoError());
    });
  }

  String formatDate(String date) {
    String dateNumber = date.substring(0, date.indexOf('T'));
    int month = int.parse(dateNumber.substring(
        dateNumber.indexOf('-') + 1, dateNumber.lastIndexOf('-')));
    String day = dateNumber.substring(dateNumber.lastIndexOf('-') + 1);
    String year = dateNumber.substring(0, dateNumber.indexOf('-'));
    return '$day ${months[month]}, $year';
  }
}
