import 'package:education_app/business_logic/auth/login/cubit/login_cubit.dart';
import 'package:education_app/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottonAuth extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool isBorder;
  BottonAuth(
      {super.key, this.onTap, required this.text, required this.isBorder});
  MyColor myColor = MyColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        width: MediaQuery.of(context).size.width / 2.2,
        decoration: BoxDecoration(
          color: isBorder ? Colors.white : myColor.myPurple,
          border: Border.all(color: myColor.myPurple, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30,
                fontFamily: "title",
                color: isBorder ? myColor.myPurple : Colors.white),
          ),
        ),
      ),
    );
  }
}
