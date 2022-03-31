import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_article.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/ui/home/blocs/states/search_articles_state.dart';

class SearchArticlesBloc extends Cubit<SearchArticlesState> {
  final SearchArticlesUseCase _searchArticleUseCase;
  List<NYTimesArticle> listOfArticles = <NYTimesArticle>[];

  SearchArticlesBloc(SearchArticlesUseCase searchArticleUseCase)
      : _searchArticleUseCase = searchArticleUseCase,
        super(const SearchArticlesStateLoading());

  Future<void> searchArticles(SearchArticlesParams params) async {
    emit(const SearchArticlesStateLoading());

    final articles = await _searchArticleUseCase(params);

    articles.fold((failure) => emit(const SearchArticlesStateError()), (data) {
      listOfArticles = data;
      emit(const SearchArticlesStateNoError());
    });
  }

}
