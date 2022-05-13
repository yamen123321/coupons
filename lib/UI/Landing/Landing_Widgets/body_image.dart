import 'package:flutter/material.dart';

class BodyImage extends StatelessWidget {
  const BodyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.scaleDown, image: AssetImage('assets/images/2.png'))),
    );
  }
}