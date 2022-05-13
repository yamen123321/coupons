import 'package:flutter/material.dart';
import 'package:coupons/Const/TextTheem.dart';

class PrivacyText extends StatelessWidget {
  const PrivacyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "By continuing you agree Coupon's Terms of",
          style: TextTheem.privacyText,
        ),
        Text(
          "Services & Privacy Policy",
          style: TextTheem.privacyText,
        )
      ],
    );
  }
}
