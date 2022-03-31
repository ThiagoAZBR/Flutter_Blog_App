import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blog_app/app/ui/home/module.dart';
import 'package:flutter_blog_app/app_widget.dart';

void main() {
  initModule();
  runApp(
    const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: AppWidget(),
    ),
  );
}
