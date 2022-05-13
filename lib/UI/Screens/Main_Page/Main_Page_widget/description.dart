import 'package:coupons/Const/TextTheem.dart';
import 'package:flutter/material.dart';


class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Description ",
      style: TextTheem.tiTle,
    );
  }
}