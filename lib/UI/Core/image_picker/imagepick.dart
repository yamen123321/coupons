// import 'package:coupons/Const/Colors.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerUI extends StatelessWidget {
//   void Function(String imagePath) onImagePicked;
//   ImagePickerUI({
//     required this.onImagePicked,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.3,
//       decoration: BoxDecoration(
//           color: AppColors.blueGreyColor,
//           border: Border.all(color: Colors.transparent),
//           borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(15), topRight: Radius.circular(15))),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 150),
//             child: Divider(
//               thickness: 4,
//               color: AppColors.amberColor,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Text(
//               "Please Choose Image",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//           ),
//           InkWell(
//             onTap: () async {
//               ImagePicker picker = ImagePicker();
//               final file = await picker.pickImage(source: ImageSource.gallery);
//               if (file != null) onImagePicked.call(file.path);
//               Navigator.of(context).pop();
//             },
//             child: Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.photo,
//                     size: 30,
//                     color: AppColors.amberColor,
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   const Text(
//                     "From Gallery",
//                     style: TextStyle(fontSize: 25),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () async {
//               ImagePicker picker = ImagePicker();
//               final file = await picker.pickImage(source: ImageSource.camera);
//               if (file != null) onImagePicked.call(file.path);
//               Navigator.of(context).pop();
//             },
//             child: Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.camera,
//                     size: 30,
//                     color: AppColors.amberColor,
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   const Text(
//                     "From Camera",
//                     style: TextStyle(fontSize: 25),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }