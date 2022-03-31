abstract class SearchArticlesState {}

class SearchArticlesStateNoError implements SearchArticlesState {
  const SearchArticlesStateNoError();
}

class SearchArticlesStateError implements SearchArticlesState {
  const SearchArticlesStateError();
}

class SearchArticlesStateLoading implements SearchArticlesState {
  const SearchArticlesStateLoading();
}
