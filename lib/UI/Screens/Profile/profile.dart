import 'package:coupons/Const/Border.dart';
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/UI/auth/Register/register.dart';
import 'package:flutter/material.dart';

class ProFilePage extends StatefulWidget {
  const ProFilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProFilePage> createState() => _ProFilePageState();
}

class _ProFilePageState extends State<ProFilePage> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    RegisterModel registerModel = RegisterModel.empty();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _enabled = true;
              });
            },
            child: Container(
              width: 100,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.amberColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.blackColor,
                ),
              ),
              child: Text(
                "Edit",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Stack(
          //   children: [
          //     WallPeparImage(
          //         edit: _enabled,
          //         onSelectImage: (imagePath) {
          //           registerModel =
          //               registerModel.copyWith(wallpepar: imagePath);
          //         }),
          //     Container(
          //         margin: const EdgeInsets.only(
          //           top: 120,
          //         ),
          //         alignment: Alignment.bottomCenter,
          //         child: AvatarImage(
          //             edit: _enabled,
          //             onSelectImage: (imagePath) {
          //               registerModel =
          //                   registerModel.copyWith(avatar: imagePath);
          //             })),
          //   ],
          // ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            enabled: _enabled,
            initialValue: "Name",
            cursorColor: AppColors.amberColor,
            style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
                filled: true,
                fillColor: AppColors.blueGreyColor,
                focusedBorder: AppBorderFocusedColor.focusedColor,
                border: AppBorder.border),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            enabled: _enabled,
            initialValue: "0913287640",
            cursorColor: AppColors.amberColor,
            style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.phone,
                  color: Colors.amber,
                ),
                filled: true,
                fillColor: AppColors.blueGreyColor,
                focusedBorder: AppBorderFocusedColor.focusedColor,
                border: AppBorder.border),
          ),
          const SizedBox(
            height: 10,
          ),
          _enabled
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _enabled = false;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.amberColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppColors.blackColor,
                        ),
                      ),
                      child: Text(
                        "Done",
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
