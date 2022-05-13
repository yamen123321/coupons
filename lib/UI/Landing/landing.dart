import 'package:coupons/UI/Core/backgroundwidget.dart';
import 'package:coupons/UI/Landing/Landing_Widgets/body_image.dart';
import 'package:coupons/UI/Landing/Landing_Widgets/main_button.dart';
import 'package:coupons/UI/Landing/Landing_Widgets/privacytext.dart';
import 'package:coupons/UI/Landing/Landing_Widgets/taglinetext.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            BodyImage(),
            SizedBox(
              height: 10,
            ),
            TagLineText(),
            SizedBox(
              height: 10,
            ),
            MainButton(),
            SizedBox(
              height: 30,
            ),
            PrivacyText()
          ],
        ),
      )),
    );
  }
}
