import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blog_app/app/shared/themes/app_colors.dart';
import 'package:flutter_blog_app/app/shared/themes/app_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Primeiro Texto',
                  style: AppTextStyles.interSmall(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
