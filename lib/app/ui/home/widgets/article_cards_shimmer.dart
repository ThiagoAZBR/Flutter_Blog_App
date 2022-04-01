import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ArticleCardsShimmer extends StatelessWidget {
  const ArticleCardsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          ShimmerContainer(height: 16, width: 70),
                          Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: ShimmerContainer(
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          ShimmerContainer(height: 16, width: 110),
                          SizedBox(
                            height: 32,
                          ),
                          ShimmerContainer(height: 16, width: double.infinity),
                          SizedBox(
                            height: 8,
                          ),
                          ShimmerContainer(height: 16, width: double.infinity),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

class ShimmerContainer extends StatelessWidget {
  final double height;
  final double width;

  const ShimmerContainer({Key? key, required this.height, required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade100,
      highlightColor: Colors.grey.shade200,
      child: Container(
        color: AppColors.white,
        width: width,
        height: height,
      ),
    );
  }
}
