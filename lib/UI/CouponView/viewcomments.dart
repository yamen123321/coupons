import 'package:coupons/Const/Colors.dart';
import 'package:coupons/Const/TextTheem.dart';
import 'package:flutter/material.dart';

class ViewComments extends StatefulWidget {
  const ViewComments({Key? key}) : super(key: key);

  @override
  _ViewCommentsState createState() => _ViewCommentsState();
}

class _ViewCommentsState extends State<ViewComments> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        viewComments(context);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.amberColor,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          " Comments ",
          style: TextTheem.commends,
        ),
      ),
    );
  }

  viewComments(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  color: AppColors.blueGreyColor,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Divider(
                        thickness: 4,
                        color: AppColors.amberColor,
                      ),
                    ),
                    Text(
                      "Comments",
                      style: TextTheem.com,
                    )
                  ]));
        });
  }
}
