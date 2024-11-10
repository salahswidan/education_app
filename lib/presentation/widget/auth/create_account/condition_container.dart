import 'package:education_app/constants/my_color.dart';
import 'package:flutter/material.dart';

class ConditionContainer extends StatelessWidget {
  ConditionContainer(
      {super.key,
      required this.index,
      required this.title,
      required this.subTitle});
  MyColor myColor = MyColor();
  final int index;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: myColor.myGray),
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 30,
          vertical: MediaQuery.of(context).size.height / 120),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 100),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${index + 1}",
              style: TextStyle(
                  fontSize: 30, color: myColor.myPurple, fontFamily: "title"),
            ),
            Text(
                textAlign: TextAlign.right,
                title,
                style: TextStyle(fontSize: 25, fontFamily: "title")),
            Text(
              textAlign: TextAlign.right,
              subTitle,
              style: TextStyle(
                  fontSize: 20,
                  color: myColor.myDeepGray,
                  fontWeight: FontWeight.w500),
            ),
          ]),
    );
  }
}
