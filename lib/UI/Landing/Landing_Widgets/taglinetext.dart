import 'package:flutter/material.dart';
import 'package:coupons/Const/TextTheem.dart';

class TagLineText extends StatelessWidget {
  const TagLineText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text("My", style: TextTheem.mY),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("Coupon", style: TextTheem.coupon),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("App", style: TextTheem.app),
              ),
            ],
          ),
        ));
  }
}
