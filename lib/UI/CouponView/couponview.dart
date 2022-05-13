import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:coupons/UI/CouponView/viewcomments.dart';
import 'package:flutter/material.dart';

class CouponView extends StatefulWidget {
  const CouponView({Key? key}) : super(key: key);

  @override
  _CouponViewState createState() => _CouponViewState();
}

class _CouponViewState extends State<CouponView> {
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("editcoupon");
              },
              icon: Icon(
                Icons.edit,
                color: AppColors.amberColor,
              ))
        ],
        centerTitle: true,
        backgroundColor: AppColors.darkColor.withOpacity(0.9),
        title: RichText(
          text: TextSpan(
            text: "My",
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
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 20),
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: AppColors.amberColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  "Title",
                  style: TextStyle(color: AppColors.amberColor, fontSize: 30),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description :",
                  style: TextTheem.description,
                )),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.amberColor,
                  borderRadius: BorderRadius.circular(20)),
            ),
            const ViewComments(),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("usecoupon");
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.amberColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  " Use Coupon ",
                  style: TextTheem.commends,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
