import 'package:coupons/Const/Border.dart';
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/helper.dart';
import 'package:coupons/UI/Core/backgroundwidget.dart';
import 'package:coupons/UI/Core/buttonback.dart';
import 'package:coupons/UI/auth/Register/register.dart';
import 'package:coupons/UI/auth/SignUp/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  RegisterModel registerModel = RegisterModel.empty();
  bool showErrorMessages = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
          child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ButtonBack(),
              Center(
                child: Image.asset("assets/images/2.png"),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Form(
                    autovalidateMode: showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: AppColors.amberColor,
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.amber,
                              ),
                              filled: true,
                              fillColor: AppColors.blueGreyColor,
                              hintText: "Enter your Email",
                              hintStyle: TextStyle(color: AppColors.greyColor),
                              focusedBorder: AppBorderFocusedColor.focusedColor,
                              border: AppBorder.border),
                          onChanged: (val) {
                            registerModel = registerModel.copyWith(email: val);
                          },
                          validator: (_) {
                            return (ValidationHelper.validatNotEmptyString(
                                    registerModel.email))
                                ? null
                                : "Email is Required";
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: AppColors.amberColor,
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 18),
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.remove_red_eye,
                                color: Colors.amber,
                              ),
                              filled: true,
                              fillColor: AppColors.blueGreyColor,
                              hintText: "Enter your Password",
                              hintStyle: TextStyle(color: AppColors.greyColor),
                              focusedBorder: AppBorderFocusedColor.focusedColor,
                              border: AppBorder.border),
                          validator: (_) {
                            return (ValidationHelper.validatNotEmptyString(
                                    registerModel.email))
                                ? null
                                : "Enter your password";
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "If you haven't account",
                                style: TextStyle(color: AppColors.greyColor),
                              ),
                            const  SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const SignUpPage(),
                                        type: PageTransitionType.leftToRight,
                                      ));
                                },
                                child: Text(
                                  "Click Here!",
                                  style: TextStyle(
                                      color: AppColors.yellowColor,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showErrorMessages = true;
                            });
                             Navigator.of(context).pushNamed("screen");
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
                              "Log in",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
