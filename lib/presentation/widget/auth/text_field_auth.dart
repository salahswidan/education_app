import 'package:education_app/constants/my_color.dart';
import 'package:flutter/material.dart';

import '../../../constants/my_validator.dart';

class TextFieldAuth extends StatelessWidget {
  final String title;
  final String type;
  final Function()? onTap;
  final bool? flag;
  final bool isLast;
  final double? size;
  TextFieldAuth(
      {super.key,
      required this.title,
      required this.type,
      this.onTap,
      this.flag,
      required this.isLast,
      this.size});

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
          TextFormField(
            textDirection: TextDirection.rtl,
            cursorColor: Colors.black,
            obscureText: flag == true ? true : false,
            validator: (value) {
             return myValidator(value.toString(), type, title);
            },
            textInputAction:
                isLast ? TextInputAction.done : TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: (type == "pass")
                  ? GestureDetector(
                      onTap: onTap,
                      child: Icon(
                        flag == true
                            ? Icons.remove_red_eye_rounded
                            : Icons.visibility_off_rounded,
                        color: MyColor().myPurple,
                      ),
                    )
                  : (type == "phone")
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width / 7,
                          child: Center(
                              child: Text(
                            "+20",
                            style: TextStyle(
                                color: myColor.myPurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )))
                      : SizedBox(),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0))),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
