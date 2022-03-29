import 'package:flutter_blog_app/app/domain/usecases/usecase.dart';

class SearchArticleUseCase implements UseCase<SearchArticleParams> {
  @override
  Future<void> call(SearchArticleParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}

class SearchArticleParams {
  final String subject;

  SearchArticleParams({required this.subject});
}
