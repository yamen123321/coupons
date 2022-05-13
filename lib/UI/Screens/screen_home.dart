import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:coupons/UI/Screens/Main_Page/main_page.dart';
import 'package:coupons/UI/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({
    Key? key,
  }) : super(key: key);

  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: AppColors.darkColor,
          drawerScrimColor: Colors.transparent,
          appBar: AppBar(
            leading: Container(),
            centerTitle: true,
            backgroundColor: AppColors.darkColor.withOpacity(0.9),
            actions: [
              _selectedIndex == 1
                  ? Container()
                  : IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("addcoupon");
                      },
                      icon: Icon(
                        Icons.add,
                        color: AppColors.amberColor,
                      ))
            ],
            title: RichText(
              text: TextSpan(
                text: "My",
                style: TextTheem.mY,
                children: <TextSpan>[
                  TextSpan(text: 'Coupon', style: TextTheem.coupon)
                ],
              ),
            ),
          ),
          body: PageView(
            onPageChanged: onTapped,
            controller: pageController,
            children: const [HomePage(), ProFilePage()],
          ),
          bottomNavigationBar: Container(
            color: AppColors.darkColor.withOpacity(0.9),
            child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile"),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: AppColors.amberColor,
                unselectedItemColor: AppColors.greyColor,
                onTap: onTapped),
          ),
        ),
        onWillPop: () => Future.value(false));
  }
}
