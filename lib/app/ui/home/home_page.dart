import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/app/domain/usecases/search_articles_use_case.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/ui/home/blocs/search_articles_bloc.dart';
import 'package:flutter_blog_app/app/ui/home/blocs/states/search_articles_state.dart';
import 'package:flutter_blog_app/app/ui/home/widgets/article_cards_shimmer.dart';
import 'package:flutter_blog_app/app/ui/home/widgets/app_bar.dart';
import 'package:flutter_blog_app/app/ui/home/widgets/article_card.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SearchArticlesBloc _searchArticlesBloc = GetIt.I();

  @override
  void initState() {
    _searchArticlesBloc
        .searchArticles(SearchArticlesParams(subject: 'Technology'), context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteOpaque,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                backgroundColor: AppColors.dark,
                flexibleSpace: FlexibleSpaceBar(
                  background: AppBarWidget(
                    onSubmitted: (searchFieldText) {
                      _searchArticlesBloc.searchArticles(
                          SearchArticlesParams(subject: searchFieldText), context);
                    },
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, index) => BlocBuilder(
                    bloc: _searchArticlesBloc,
                    builder: (BuildContext context, SearchArticlesState state) {
                      if (state is SearchArticlesStateLoading) {
                        return const ArticleCardsShimmer();
                      }

                      if (state is SearchArticlesStateError) {
                        return const SizedBox();
                      }

                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            for (var i = 0;
                                i < _searchArticlesBloc.listOfArticles.length;
                                i++)
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 25,
                                  right: 20,
                                  left: 20,
                                ),
                                child: ArticleCard(
                                  date: _searchArticlesBloc.formatDate(
                                      _searchArticlesBloc
                                          .listOfArticles[i].publishingDate),
                                  title: _searchArticlesBloc
                                      .listOfArticles[i].title,
                                  body: _searchArticlesBloc
                                      .listOfArticles[i].leadParagraph,
                                ),
                              ),
                          ],
                        ),
                      );
                    }),
                childCount: 1,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
