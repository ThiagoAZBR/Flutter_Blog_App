import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles.dart';
import 'package:flutter_blog_app/app/shared/errors/errors.dart';
import 'package:flutter_test/flutter_test.dart';

class SearchArticleRepositoryMock implements SearchArticleRepository {
  @override
  Future<Either<SearchFailed, NYTimesSearch>> searchArticles(
      SearchArticleParams params) async {
    try {
      return Right(NYTimesSearch(status: 'OK', copyright: 'copyright', response: {}));
    } catch (e) {
      return Left(SearchFailed(''));
    }
  }
}

void main() {
  final SearchArticleRepository searchArticleRepository =
      SearchArticleRepositoryMock();
  final SearchArticleUseCase searchArticleUseCase =
      SearchArticleUseCase(searchArticleRepository);

  test('Must return New York times API data', () async {
    final nyTimesApiResult =
        await searchArticleUseCase(SearchArticleParams(subject: 'economy'));

    expect(nyTimesApiResult, isA<Right>());
  });
}
