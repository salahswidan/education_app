import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  bool passFlag = true;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  LoginCubit() : super(LoginInitial());
  void seeAndHide() {
    passFlag = !passFlag;
    emit(LoginUpdate(passFlag.toString()));
  }

  void goToHome() {
    var formState = globalKey.currentState;
    if (formState!.validate()) {
      
    }
  }
}
