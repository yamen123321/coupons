import 'package:coupons/Const/Border.dart';
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:coupons/Const/helper.dart';
import 'package:coupons/UI/Core/backgroundwidget.dart';
import 'package:coupons/UI/Core/buttonback.dart';
import 'package:coupons/UI/auth/LogIn/login.dart';
import 'package:coupons/UI/auth/Register/register.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              RichText(
                text: TextSpan(
                  text: "My",
                  style: TextTheem.mY,
                  children: <TextSpan>[
                    TextSpan(text: 'Coupon', style: TextTheem.coupon)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(5),
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
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.amber,
                              ),
                              filled: true,
                              fillColor: AppColors.blueGreyColor,
                              hintText: "Enter your Name",
                              hintStyle: TextStyle(color: AppColors.greyColor),
                              focusedBorder: AppBorderFocusedColor.focusedColor,
                              border: AppBorder.border),
                          onChanged: (val) {
                            registerModel = registerModel.copyWith(name: val);
                          },
                          validator: (_) {
                            if (ValidationHelper.validatNotEmptyString(
                                registerModel.name)) {
                              return null;
                            } else {
                              return "Name cant be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.phone,
                                color: Colors.amber,
                              ),
                              filled: true,
                              fillColor: AppColors.blueGreyColor,
                              hintText: "Enter your Phone Number",
                              hintStyle: TextStyle(color: AppColors.greyColor),
                              focusedBorder: AppBorderFocusedColor.focusedColor,
                              border: AppBorder.border),
                          onChanged: (val) {
                            registerModel = registerModel.copyWith(phone: val);
                          },
                          validator: (_) {
                            if (ValidationHelper.validatNotEmptyString(
                                    registerModel.phone) &&
                                ValidationHelper.stringLength(
                                    registerModel.phone, 10)) {
                              return null;
                            } else {
                              if (!ValidationHelper.validatNotEmptyString(
                                  registerModel.phone)) {
                                return "Cant be Empty";
                              } else if (!ValidationHelper.stringLength(
                                  registerModel.phone, 10)) {
                                {
                                  return "most be 10 numbers";
                                }
                              }
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: AppColors.amberColor,
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 18),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.location_city_outlined,
                                color: Colors.amber,
                              ),
                              filled: true,
                              fillColor: AppColors.blueGreyColor,
                              hintText: "Enter your Address",
                              hintStyle: TextStyle(color: AppColors.greyColor),
                              focusedBorder: AppBorderFocusedColor.focusedColor,
                              border: AppBorder.border),
                          onChanged: (val) {
                            registerModel =
                                registerModel.copyWith(addrress: val);
                          },
                          validator: (_) {
                            if (ValidationHelper.validatNotEmptyString(
                                registerModel.addrress)) {
                              return null;
                            } else {
                              return "Address cant be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // SelectedTags(
                        //   registerModel: registerModel,
                        //   tags: [
                        //     "man",
                        //     "woman",
                        //     "children",
                        //     "old",
                        //     "young",
                        //   ],
                        //   onChange: (tagsId) {
                        //     registerModel =
                        //         registerModel.copyWith(tagsId: tagsId);
                        //     setState(() {});
                        //   },
                        // ),
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
                          onChanged: (val) {
                            registerModel =
                                registerModel.copyWith(password: val);
                          },
                          validator: (_) {
                            if (ValidationHelper.validatNotEmptyString(
                                    registerModel.password) &&
                                ValidationHelper.validatPassord(
                                    registerModel.password, 5)) {
                              return null;
                            } else {
                              if (!ValidationHelper.validatNotEmptyString(
                                  registerModel.password)) {
                                return "Cant be Empty";
                              } else if (!ValidationHelper.validatPassord(
                                  registerModel.password, 5)) {
                                {
                                  return "most more than 5 wards";
                                }
                              }
                            }
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "If you already have account",
                                style: TextStyle(color: AppColors.greyColor),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                        child:const LogInPage(),
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
                              "Sign up",
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
