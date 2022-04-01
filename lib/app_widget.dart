import 'package:flutter/material.dart';
import 'package:flutter_blog_app/app/ui/home/error_page.dart';
import 'package:flutter_blog_app/app/ui/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home' : (context) => const HomePage(),
        '/error' :(context) => const ErrorPage()
      },
    );
  }
}