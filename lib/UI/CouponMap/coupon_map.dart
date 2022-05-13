import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
class CouponMap extends StatefulWidget {
  CouponMap({Key? key}) : super(key: key);

  @override
  _CouponMapState createState() => _CouponMapState();
}

class _CouponMapState extends State<CouponMap> {
  MapController controller = MapController();
  var location = LatLng(33.511236, 36.310153);

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
            text: "Coupon",
            style: TextTheem.mY,
            children: <TextSpan>[
              TextSpan(text: 'Map', style: TextTheem.coupon)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              child: FlutterMap(
                options: MapOptions(
                    onTap: (_, latlng) {
                      setState(() {
                        location = latlng;
                      });
                    },
                    center: LatLng(33.511236, 36.310153),
                    minZoom: 10),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']),
                  MarkerLayerOptions(markers: [
                    Marker(
                        width: 80.0,
                        height: 80.0,
                        point: location,
                        builder: (context) => Container(
                              child: IconButton(
                                icon: Icon(Icons.location_on),
                                color: Colors.red,
                                iconSize: 45,
                                onPressed: () {
                                  print('Marker tapped');
                                },
                              ),
                            ))
                  ])
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.amberColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Select Location",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
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