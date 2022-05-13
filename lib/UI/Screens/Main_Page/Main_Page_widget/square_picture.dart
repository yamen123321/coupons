import 'package:coupons/Const/Colors.dart';
import 'package:flutter/material.dart';


class SquarePicture extends StatefulWidget {
  const SquarePicture({Key? key}) : super(key: key);

  @override
  _SquarePictureState createState() => _SquarePictureState();
}

class _SquarePictureState extends State<SquarePicture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 75,
      width: 75,
      decoration: BoxDecoration(
          color: AppColors.amberColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
