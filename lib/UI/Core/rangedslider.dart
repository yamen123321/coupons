import 'package:coupons/Const/Colors.dart';
import 'package:flutter/material.dart';

class RangSlider extends StatefulWidget {
  const RangSlider({Key? key}) : super(key: key);

  @override
  _RangSliderState createState() => _RangSliderState();
}

class _RangSliderState extends State<RangSlider> {
  RangeValues values = const RangeValues(1, 19);
  RangeValues valuesBottom = const RangeValues(0, 2);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(inactiveTrackColor: AppColors.blueGreyColor),
      child: RangeSlider(
          activeColor: AppColors.amberColor,
          values: values,
          max: 90,
          min: 1,
          divisions: 10,
          labels: RangeLabels(
              values.start.round().toString(), values.end.round().toString()),
          onChanged: (values) => setState(
                () => this.values = values,
              )),
    );
  }
}
