import 'package:education_app/constants/my_color.dart';
import 'package:flutter/material.dart';

import '../text_field_auth.dart';

class Create3 extends StatelessWidget {
  Create3({super.key});

  MyColor myColor = MyColor();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAuth(
          title: "رقم موبايل الاب",
          type: "phone",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        TextFieldAuth(
          title: "رقم موبايل الام",
          type: "phone",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "صورة البطاقة او شهادة الميلاد الرقم القومي",
              style: TextStyle(
                  fontSize: 17, color: myColor.myDeepGray, fontFamily: "sub2"),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 100,
        ),
        Container(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width / 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.cloud_upload_rounded,
                color: myColor.myPurple,
                size: MediaQuery.of(context).size.width / 10,
              ),
              Text("  حدد صورة ",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "title",
                      color: myColor.myPurple)),
            ],
          ),
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: myColor.myGray,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
