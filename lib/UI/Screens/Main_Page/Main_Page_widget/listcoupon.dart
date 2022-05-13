import 'package:coupons/Const/Colors.dart';
import 'package:coupons/UI/Screens/Main_Page/Main_Page_widget/description.dart';
import 'package:coupons/UI/Screens/Main_Page/Main_Page_widget/square_picture.dart';
import 'package:coupons/UI/Screens/Main_Page/Main_Page_widget/title.dart';
import 'package:flutter/material.dart';

class ListCoupon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.blueGreyColor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
         const Padding(
            padding:  EdgeInsets.only(left: 10),
            child: SquarePicture(),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
             SizedBox(
                height: 20,
              ),
            TitleWidget(),
             DescriptionWidget()
            ],
          )
        ],
      ),
    );
  }
}
