import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/app_urls.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/shared/themes/app_fonts.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 8,
                ),
                child: CupertinoButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(
                    CupertinoIcons.arrow_left,
                    size: 30,
                    color: AppColors.dark,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 104,
                ),
                Text('Ops :/', style: AppTextStyles.lexendDecaExtra()),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 8,
                  ),
                  child: Text(
                    'Something went wrong. \nUse another keyword or try again.',
                    style: AppTextStyles.lexendDecaMedium(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.asset(AppUrls.errorImage)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 56),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CupertinoButton(
                    color: AppColors.dark,
                    child: Text(
                      'Try Again',
                      style: AppTextStyles.lexendDecaBig(AppColors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
