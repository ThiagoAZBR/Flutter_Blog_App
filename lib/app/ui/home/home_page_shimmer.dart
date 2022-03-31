import 'package:flutter/cupertino.dart';

class HomePageShimmer extends StatelessWidget {
  const HomePageShimmer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CupertinoActivityIndicator());
  }
}