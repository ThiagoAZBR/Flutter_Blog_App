import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';

class AppTextStyles {
  // Color has already the value of GrayDark
  // because it's default color for text.
  static TextStyle interSmall([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 12,
    fontFamily: 'Inter',
    color: color
  );
  static TextStyle interMedium([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 14,
    fontFamily: 'Inter',
    color: color
  );
  static TextStyle interBig([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 16,
    fontFamily: 'Inter',
    color: color
  );
  static TextStyle interVeryBig([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 18,
    fontFamily: 'Inter',
    color: color
  );

  static TextStyle lexendDecaSmall([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 12,
    fontFamily: 'LexendDeca',
    color: color
  );
  static TextStyle lexendDecaMedium([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 14,
    fontFamily: 'LexendDeca',
    color: color
  );
  static TextStyle lexendDecaBig([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 16,
    fontFamily: 'LexendDeca',
    color: color
  );
  static TextStyle lexendDecaVeryBig([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 18,
    fontFamily: 'LexendDeca',
    color: color
  );
  static TextStyle lexendDecaExtra([Color color = AppColors.grayDark]) => TextStyle(
    fontSize: 24,
    fontFamily: 'LexendDeca',
    color: color,
    fontWeight: FontWeight.bold
  );
}
