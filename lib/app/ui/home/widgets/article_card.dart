import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/shared/themes/app_fonts.dart';

class ArticleCard extends StatefulWidget {
  final String _date;
  final String _title;
  final String _body;

  const ArticleCard({
    Key? key,
    required String date,
    required String title,
    required String body,
  })  : _date = date,
        _title = title,
        _body = body,
        super(key: key);

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget._date),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    color: isFavorite ? Colors.pink : AppColors.dark,
                    icon: const Icon(Icons.favorite_outline))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 16,
              ),
              child: Text(
                widget._title,
                style: AppTextStyles.lexendDecaBig(),
              ),
            ),
            Text(
              widget._body,
              style: AppTextStyles.lexendDecaSmall(),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
