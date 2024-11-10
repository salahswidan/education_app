import 'package:education_app/constants/my_color.dart';
import 'package:education_app/constants/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'condition_container.dart';

class Create4 extends StatelessWidget {
  Create4({super.key});
  MyColor myColor = MyColor();
  MyText myText = MyText();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "ارشادات عامة خاصة بالمنصة و من يخالف هذة الشروط  سيتم حظر حسابه",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: myColor.myDeepGray,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        MasonryGridView.count(
          crossAxisCount: 1,
          itemBuilder: (context, index) => ConditionContainer(
            index: index,
            title: myText.registerText[index][0],
            subTitle: myText.registerText[index][1],
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "انا اوافق علي الشروط و الاجكام",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Checkbox(
              value: true,
              onChanged: (value) {},
              shape: CircleBorder(),
              activeColor: myColor.myPurple,
            )
          ],
        ),
      ],
    );
  }
}
