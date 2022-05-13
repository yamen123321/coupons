import 'package:coupons/Const/Colors.dart';
import 'package:flutter/material.dart';

class ButtonBack extends StatefulWidget {
  const ButtonBack({Key? key}) : super(key: key);

  @override
  _ButtonBackState createState() => _ButtonBackState();
}

class _ButtonBackState extends State<ButtonBack> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.all(15),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: AppColors.amberColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black)),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.blackColor,
            ),
            onPressed: () {
              Navigator.of(context).popAndPushNamed("landing");
            },
          ),
        ));
  }
}
