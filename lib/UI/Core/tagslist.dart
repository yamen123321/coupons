
import 'package:coupons/Const/Colors.dart';
import 'package:coupons/UI/auth/Register/register.dart';
import 'package:flutter/material.dart';

class SelectedTags extends StatefulWidget {
  final List<String> tags;
  void Function(List<int> tagsId) onChange;
  final RegisterModel registerModel;
  SelectedTags(
      {required this.registerModel,
      required this.tags,
      required this.onChange,
      Key? key})
      : super(key: key);

  @override
  _SelectedTagsState createState() => _SelectedTagsState();
}

class _SelectedTagsState extends State<SelectedTags> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blueGreyColor,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: ExpansionTile(
          title: Text(
            'Tags',
            style: TextStyle(color: AppColors.greyColor),
          ),
          leading: Icon(
            Icons.select_all,
            color: AppColors.amberColor,
            size: 25,
          ),
          children: List<Widget>.generate(5, (index) {
            return ListTile(
                trailing: isSelected(
                  index,
                  widget.registerModel.tagsId,
                )
                    ? Icon(
                        Icons.check,
                        color: AppColors.amberColor,
                      )
                    : null,
                title: Text(
                  widget.tags[index],
                  style: TextStyle(color: AppColors.amberColor),
                ),
                onTap: () {
                  bool remove = isSelected(index, widget.registerModel.tagsId);
                  //setState(() {
                  List<int> temp = List.from(widget.registerModel.tagsId);
                  if (remove) {
                    temp.remove(index);
                    //selectedTags.remove(index);
                  } else {
                    temp.add(index);
                    //selectedTags.add(index);
                  }
                  if (temp.length > 3) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Can not selecct more than 3')));
                  } else {
                    widget.onChange.call(temp);
                  }
                  //});
                });
          })),
    );
  }

  bool isSelected(int tagId, List selectedTags) {
    bool remove = false;
    for (var tag in selectedTags) {
      remove |= (tag == tagId);
    }
    return remove;
  }
}