import 'package:dio/dio.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/external/datasources/search_articles_data_source_impl.dart';
import 'package:flutter_blog_app/app/infra/datasources/search_articles_data_source.dart';
import 'package:flutter_blog_app/app/infra/repositories/search_articles_repository_impl.dart';
import 'package:flutter_blog_app/app/ui/home/blocs/search_articles_bloc.dart';
import 'package:get_it/get_it.dart';

initModule() {
  final i = GetIt.instance;
  i.registerFactory<Dio>(() => Dio());
  i.registerFactory<SearchArticlesDataSource>(
    () => SearchArticlesDataSourceImpl(
      GetIt.I<Dio>(),
    ),
  );
  i.registerFactory<SearchArticlesRepository>(
    () => SearchArticlesRepositoryImpl(
      GetIt.I<SearchArticlesDataSource>(),
    ),
  );
  i.registerFactory(
    () => SearchArticlesUseCase(
      GetIt.I<SearchArticlesRepository>(),
    ),
  );
  i.registerFactory(
    () => SearchArticlesBloc(
      GetIt.I<SearchArticlesUseCase>(),
    ),
  );
}
