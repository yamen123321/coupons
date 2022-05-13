import 'package:coupons/Const/Border.dart';
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:coupons/UI/Core/genderlist.dart';
import 'package:coupons/UI/Core/rangedslider.dart';
import 'package:coupons/UI/Core/tagslist.dart';
import 'package:coupons/UI/auth/Register/register.dart';
import 'package:flutter/material.dart';

class EditCoupon extends StatefulWidget {
  const EditCoupon({Key? key}) : super(key: key);

  @override
  _EditCouponState createState() => _EditCouponState();
}

class _EditCouponState extends State<EditCoupon> {
  RegisterModel registerModel = RegisterModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
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
            text: "Edit",
            style: TextTheem.mY,
            children: <TextSpan>[
              TextSpan(text: 'Coupon', style: TextTheem.coupon)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    cursorColor: AppColors.amberColor,
                    style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        counterStyle: TextStyle(color: AppColors.amberColor),
                        prefixIcon: const Icon(
                          Icons.note,
                          color: Colors.amber,
                        ),
                        filled: true,
                        fillColor: AppColors.blueGreyColor,
                        hintText: "Title",
                        hintStyle: TextStyle(color: AppColors.greyColor),
                        focusedBorder: AppBorderFocusedColor.focusedColor,
                        border: AppBorder.border),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      minLines: 3,
                      maxLines: null,
                      cursorColor: AppColors.amberColor,
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 18),
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.description,
                            color: Colors.amber,
                          ),
                          filled: true,
                          fillColor: AppColors.blueGreyColor,
                          hintText: "Description",
                          hintStyle: TextStyle(color: AppColors.greyColor),
                          focusedBorder: AppBorderFocusedColor.focusedColor,
                          border: AppBorder.border)),
                ],
              )),
              const SizedBox(
                height: 10,
              ),
              SelectedTags(
                registerModel: registerModel,
                tags: const [
                  "man",
                  "woman",
                  "children",
                  "old",
                  "young",
                ],
                onChange: (tagsId) {
                  registerModel = registerModel.copyWith(tagsId: tagsId);
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.blueGreyColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      "Select a range of age ",
                      style: TextTheem.rangeStyle,
                    ),
                    const RangSlider(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const GenderList(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("couponmap");
                },
                child: TextFormField(
                  cursorColor: AppColors.amberColor,
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      enabled: false,
                      counterStyle: TextStyle(color: AppColors.amberColor),
                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: Colors.amber,
                      ),
                      filled: true,
                      fillColor: AppColors.blueGreyColor,
                      hintText: "Select Location",
                      hintStyle: TextStyle(color: AppColors.greyColor),
                      focusedBorder: AppBorderFocusedColor.focusedColor,
                      border: AppBorder.border),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SelectCouponSqr(
              //       onSelectImage: (String imagePath) {},
              //     ),
              //     SelectCouponRec(
              //       onSelectImage: (String imagePath) {},
              //     )
              //   ],
              // ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.amberColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Edit coupon",
                    style: TextTheem.addCouponBottom,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
