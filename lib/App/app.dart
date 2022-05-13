import 'package:coupons/Const/Colors.dart';
import 'package:coupons/UI/AddCoupon/add_coupon.dart';
import 'package:coupons/UI/CouponMap/coupon_map.dart';
import 'package:coupons/UI/CouponView/couponview.dart';
import 'package:coupons/UI/CouponView/editcoupon.dart';
import 'package:coupons/UI/CouponView/usecoupon.dart';
import 'package:coupons/UI/Landing/landing.dart';
import 'package:coupons/UI/Screens/screen_home.dart';
import 'package:coupons/UI/Splashscreen/splashscreen.dart';
import 'package:coupons/UI/auth/LogIn/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.amberColor,
          canvasColor: Colors.transparent,
          hoverColor: AppColors.amberColor),
      home: const SplashScreen(),
      routes: {
        "login": (context) => const LogInPage(),
        "landing": (context) => const LandingPage(),
        "screen": (context) => const ScreenView(),
        "addcoupon": (context) => const AddCoupon(),
        "couponview": (context) => const CouponView(),
        "usecoupon": (context) => const UseCoupon(),
        // "scan QR": (context) => const QRScan(),
        "couponmap": (context) => CouponMap(),
        "editcoupon": (context) => const EditCoupon(),
      },
    );
  }
}
