import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';

class AppTextStyles {
  // Color has already the value of GrayDark
  // because it's default color for text.
  static TextStyle interSmall([Color color = AppColors.grayDark]) => TextStyle(
    fontFamily: 'Inter',
    color: color
  );
}
