import 'package:coupons/Const/TextTheem.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 70),
      child: Text(
        "Title",
        style: TextTheem.tiTle,
      ),
    );
  }
}
