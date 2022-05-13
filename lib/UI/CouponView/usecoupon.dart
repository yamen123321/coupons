import 'package:coupons/Const/Border.dart';
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UseCoupon extends StatefulWidget {
  const UseCoupon({Key? key}) : super(key: key);

  @override
  _UseCouponState createState() => _UseCouponState();
}

class _UseCouponState extends State<UseCoupon> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColors.amberColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: AppColors.darkColor.withOpacity(0.9),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: "Use",
            style: TextTheem.mY,
            children: <TextSpan>[
              TextSpan(text: 'Coupon', style: TextTheem.coupon)
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.darkColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.whiteColor,
              child: QrImage(
                data: controller.text,
                size: 300,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: controller,
                cursorColor: AppColors.amberColor,
                style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.qr_code,
                      color: Colors.amber,
                    ),
                    filled: true,
                    fillColor: AppColors.blueGreyColor,
                    focusedBorder: AppBorderFocusedColor.focusedColor,
                    border: AppBorder.border),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.amberColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Use QR",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('scan QR');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.amberColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Scan QR",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}