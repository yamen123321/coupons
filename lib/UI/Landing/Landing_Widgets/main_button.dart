import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:coupons/UI/auth/LogIn/login.dart';
import 'package:coupons/UI/auth/SignUp/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MainButton extends StatefulWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Are you ready for Coupon ? ",
          style: TextStyle(color: AppColors.amberColor),
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {
            emailAuthSheet(context);
          },
          child: Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: AppColors.amberColor),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.email,
              color: AppColors.amberColor,
            ),
          ),
        ),
      ],
    );
  }

  emailAuthSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.blueGreyColor,
                border: Border.all(color: Colors.transparent),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Divider(
                    thickness: 4,
                    color: AppColors.amberColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      color: AppColors.amberColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              child: const LogInPage(),
                              type: PageTransitionType.leftToRight,
                            ));
                      },
                      child: Text(
                        "Log in",
                        style: TextTheem.logInSignUp,
                      ),
                    ),
                    MaterialButton(
                      color: AppColors.amberColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              child: const SignUpPage(),
                              type: PageTransitionType.leftToRight,
                            ));
                      },
                      child: Text("Sign up", style: TextTheem.logInSignUp),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
