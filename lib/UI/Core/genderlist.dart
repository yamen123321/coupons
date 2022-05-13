import 'package:coupons/Const/Colors.dart';
import 'package:flutter/material.dart';

class GenderList extends StatefulWidget {
  const GenderList({Key? key}) : super(key: key);

  @override
  _GenderListState createState() => _GenderListState();
}

class _GenderListState extends State<GenderList> {
  List tags = [
    "Man",
    "Woman",
  ];
  List selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blueGreyColor,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: ExpansionTile(
          title: Text(
            'Gender',
            style: TextStyle(color: AppColors.greyColor),
          ),
          leading: Icon(
            Icons.person_add,
            color: AppColors.amberColor,
            size: 25,
          ),
          children: List<Widget>.generate(2, (index) {
            return ListTile(
                trailing: isSelected(
                  tags[index],
                  selectedTags,
                )
                    ? Icon(
                        Icons.check,
                        color: AppColors.amberColor,
                      )
                    : null,
                title: Text(
                  tags[index],
                  style: TextStyle(color: AppColors.amberColor),
                ),
                onTap: () {
                  bool remove = isSelected(tags[index], selectedTags);
                  setState(() {
                    if (remove) {
                      selectedTags.remove(tags[index]);
                    } else {
                      selectedTags.add(tags[index]);
                    }
                  });
                });
          })),
    );
  }

  bool isSelected(String tags, List selectedTags) {
    bool remove = false;
    for (var tag in selectedTags) {
      remove |= (tag == tags);
    }
    return remove;
  }
}
