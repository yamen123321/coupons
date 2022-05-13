import 'dart:async';

import 'package:coupons/UI/Landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: const LandingPage(),
              type: PageTransitionType.leftToRight,
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "My",
            style: TextTheem.mY,
            children: <TextSpan>[
              TextSpan(text: 'Coupon', style: TextTheem.coupon)
            ],
          ),
        ),
      ),
    );
  }
}
