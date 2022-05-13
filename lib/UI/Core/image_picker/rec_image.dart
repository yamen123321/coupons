// import 'dart:io';

// import 'package:coupons/Const/Colors.dart';
// import 'package:coupons/Const/TextTheem.dart';
// import 'package:coupons/UI/Core/image_picker/imagepick.dart';
// import 'package:flutter/material.dart';

// class SelectCouponRec extends StatefulWidget {
//   void Function(String imagePath) onSelectImage;
//   SelectCouponRec({required this.onSelectImage, Key? key}) : super(key: key);

//   @override
//   _SelectCouponRecState createState() => _SelectCouponRecState();
// }

// class _SelectCouponRecState extends State<SelectCouponRec> {
//   String? selctedImage;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         photoSelect(context);
//       },
//       child: Container(
//         alignment: Alignment.center,
//         height: 125,
//         width: 200,
//         decoration: BoxDecoration(
//             image: selctedImage == null
//                 ? null
//                 : DecorationImage(
//                     fit: BoxFit.fill, image: FileImage(File(selctedImage!))),
//             color: AppColors.blueGreyColor,
//             borderRadius: BorderRadius.circular(10)),
//         child: selctedImage == null
//             ? Text(
//                 "Rectangle Image",
//                 style: TextTheem.selectCoupon,
//                 textAlign: TextAlign.center,
//               )
//             : null,
//       ),
//     );
//   }

//   photoSelect(BuildContext context) {
//     return showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return ImagePickerUI(onImagePicked: (imagePath) {
//             setState(() {
//               selctedImage = imagePath;
//             });
//             widget.onSelectImage.call(imagePath);
//           });
//         });
//   }
// }