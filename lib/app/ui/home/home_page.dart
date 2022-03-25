import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/shared/themes/app_fonts.dart';
import 'package:flutter_blog_app/app/ui/home/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteOpaque,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 200,
              backgroundColor: AppColors.dark,
              flexibleSpace: FlexibleSpaceBar(
                background: AppBarWidget(),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: AppColors.white,
                child: Text(
                  '$index',
                  style: AppTextStyles.interSmall(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
