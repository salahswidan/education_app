import 'package:bloc/bloc.dart';
import 'package:education_app/constants/my_text.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../../../presentation/widget/auth/create_account/create1.dart';
import '../../../../../../presentation/widget/auth/create_account/create2.dart';
import '../../../../../../presentation/widget/auth/create_account/create3.dart';
import '../../../../../../presentation/widget/auth/create_account/create4.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  List<Widget> createAccount = [
    Create1(),
    Create2(),
    Create3(),
    Create4(),
  ];
  MyText myText = MyText();
  PageController pageController = PageController();
  bool isHide = true;
  bool isHide2 = true;
  List<GlobalKey<FormState>> globalKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];
  String grade = "",
      division = "",
      government = "",
      area = "",
      gender = "",
      year = "",
      day = "",
      month = "";

  CreateAccountCubit() : super(CreateAccountInitial());
  void createAccountBotton(String type, int index) {
    if (type == 'next') {
      {
        var formState = globalKeys[index].currentState;
        if (formState!.validate()) {
          pageController.nextPage(
            duration: Duration(milliseconds: 10),
            curve: Curves.ease,
          );
        }
      }
    } else {
      pageController.previousPage(
        duration: Duration(milliseconds: 10),
        curve: Curves.ease,
      );
    }
  }

  void seeAndHide(int type) {
    if (type == 1) {
      isHide = !isHide;
    } else {
      isHide2 = !isHide2;
    }
    emit(CreateAccountUpdate(isHide.toString()));
  }
  void startBulid() {
    grade = myText.gragdes[0];
    division = myText.division[0];
    government = myText.governorates[0];
    area = myText.governorateAreas![government]![0];
    gender = myText.gender[0];
    year = myText.years[0];
    month = myText.months[0];
    day = myText.monthDaysInArabic![month]![0];
  }
}
