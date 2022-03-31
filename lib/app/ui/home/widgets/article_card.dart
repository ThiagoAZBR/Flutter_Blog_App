import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/shared/themes/app_fonts.dart';

class ArticleCard extends StatelessWidget {
  final String _date;
  final String _title;
  final String _body;
  final VoidCallback _onIconPressed;

  const ArticleCard(
      {Key? key,
      required String date,
      required String title,
      required String body,
      required VoidCallback onIconPressed})
      : _date = date,
        _title = title,
        _body = body,
        _onIconPressed = onIconPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(_date),
                IconButton(
                    onPressed: _onIconPressed,
                    icon: const Icon(Icons.favorite_outline))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 28,
                bottom: 8,
              ),
              child: Text(
                _title,
                style: AppTextStyles.lexendDecaBig(),
              ),
            ),
            Text(
              _body,
              style: AppTextStyles.lexendDecaSmall(),
            ),
          ],
        ),
      ),
    );
  }
}
