import 'package:education_app/constants/my_color.dart';
import 'package:flutter/material.dart';

class DropDownAuth extends StatelessWidget {
  final String title;
  final List list;
  final String value;
  final double? size;
  DropDownAuth({super.key, required this.title, required this.size, required this.list, required this.value});
  MyColor myColor = MyColor();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 17,
                    color: myColor.myDeepGray,
                    fontFamily: "sub2"),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 100,
          ),
          Container(
            width: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: myColor.myGray,
            ),
            child: DropdownButton(
                isExpanded: true,
                underline: Container(),
                borderRadius: BorderRadius.circular(10),
                value: value,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                dropdownColor: Colors.white,
                alignment: Alignment.centerRight,
                items: list.map((e) =>  DropdownMenuItem(
                      value: e,
                      child: Align(
                          alignment: Alignment.centerRight,child: Text(e)),
                ),).toList(),
                onChanged: (value) {}),
          ),
        ],
      ),
    );
  }
}
