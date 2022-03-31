import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/shared/themes/app_fonts.dart';

class AppBarWidget extends StatelessWidget {
  final Function(String value) _onSubmitted;
  const AppBarWidget({Key? key, required Function(String value) onSubmitted}) :
  _onSubmitted = onSubmitted, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              AppColors.dark,
              AppColors.dark,
              AppColors.light,
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Codelândia',
                    style: AppTextStyles.interVeryBig(AppColors.white),
                  ),
                  Text(
                    'blog',
                    style: AppTextStyles.interVeryBig(AppColors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CupertinoSearchTextField(
                placeholder: ' Pesquisar no Blog',
                placeholderStyle: AppTextStyles.interBig(AppColors.white),
                style: AppTextStyles.interBig(AppColors.white),
                itemColor: AppColors.white,
                backgroundColor: AppColors.white.withOpacity(0.2),
                onSubmitted: _onSubmitted,
              )
            ],
          ),
        ),
      ],
    );
  }
}
