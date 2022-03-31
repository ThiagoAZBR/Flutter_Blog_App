import 'package:dio/dio.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/external/datasources/search_articles_data_source_impl.dart';
import 'package:flutter_blog_app/app/infra/datasources/search_article_data_source.dart';
import 'package:flutter_blog_app/app/infra/repositories/search_article_repository_impl.dart';
import 'package:get_it/get_it.dart';

initModule() {
  final i = GetIt.instance;
  i.registerFactory<Dio>(() => Dio());
  i.registerFactory<SearchArticlesDataSource>(
    () => SearchArticlesDataSourceImpl(),
  );
  i.registerFactory<SearchArticleRepository>(
    () => SearchArticleRepositoryImpl(
      GetIt.I<SearchArticlesDataSource>(),
    ),
  );
  i.registerFactory(
    () => SearchArticleUseCase(
      GetIt.I<SearchArticleRepository>(),
    ),
  );
}
