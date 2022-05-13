// import 'dart:io';

// import 'package:coupons/Const/Colors.dart';
// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRScan extends StatefulWidget {
//   const QRScan({Key? key}) : super(key: key);

//   @override
//   _QRScanState createState() => _QRScanState();
// }

// class _QRScanState extends State<QRScan> {
//   final qrkey = GlobalKey(debugLabel: 'QR');
//   Barcode? barcode;
//   QRViewController? controller;
//   @override
//   void dispose() {
//     controller?.dispose();

//     super.dispose();
//   }

//   @override
//   void reassemble() async {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       await controller!.resumeCamera();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Stack(
//       alignment: Alignment.center,
//       children: [
//         buildQrView(context),
//         Positioned(bottom: 10, child: buildResult()),
//         Positioned(
//           top: 10,
//           child: buildControlButtons(),
//         ),
//         Positioned(
//             top: 20,
//             left: 20,
//             child: IconButton(
//               icon: Icon(
//                 Icons.arrow_back,
//                 color: AppColors.amberColor,
//               ),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ))
//       ],
//     )));
//   }

//   Widget buildControlButtons() => Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             color: AppColors.amberColor),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             IconButton(
//               onPressed: () async {
//                 await controller?.toggleFlash();
//                 setState(() {});
//               },
//               icon: FutureBuilder<bool?>(
//                 future: controller?.getFlashStatus(),
//                 builder: (context, snapshot) {
//                   if (snapshot.data != null) {
//                     return Icon(
//                       snapshot.data! ? Icons.flash_on : Icons.flash_off,
//                       color: AppColors.blackColor,
//                     );
//                   } else {
//                     return Container();
//                   }
//                 },
//               ),
//             ),
//             IconButton(
//               onPressed: () async {
//                 await controller?.flipCamera();
//                 setState(() {});
//               },
//               icon: FutureBuilder(
//                 future: controller?.getCameraInfo(),
//                 builder: (context, snapshot) {
//                   if (snapshot.data != null) {
//                     return Icon(
//                       Icons.switch_camera,
//                       color: AppColors.blackColor,
//                     );
//                   } else {
//                     return Container();
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       );

//   Widget buildResult() => Container(
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//             color: AppColors.amberColor,
//             borderRadius: BorderRadius.circular(10)),
//         child: Text(
//           barcode != null ? 'Result: ${barcode!.code}' : 'Scan a code!',
//           style: TextStyle(color: AppColors.blackColor),
//           maxLines: 3,
//         ),
//       );

//   Widget buildQrView(BuildContext context) => QRView(
//       overlay: QrScannerOverlayShape(
//           borderColor: AppColors.amberColor,
//           borderRadius: 10,
//           borderLength: 20,
//           borderWidth: 10,
//           cutOutSize: MediaQuery.of(context).size.width * 0.8),
//       key: qrkey,
//       onQRViewCreated: onQRViewCreated);
//   void onQRViewCreated(QRViewController controller) {
//     setState(() => this.controller = controller);
//     controller.scannedDataStream
//         .listen((barcode) => setState(() => this.barcode = barcode));
//   }
// }
