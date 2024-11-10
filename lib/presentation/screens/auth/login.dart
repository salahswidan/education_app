import 'package:education_app/business_logic/auth/login/cubit/login_cubit.dart';
import 'package:education_app/constants/my_color.dart';
import 'package:education_app/presentation/widget/auth/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/auth/botton_auth.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  MyColor myColor = MyColor();
  late LoginCubit loginCubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginCubit = LoginCubit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    loginCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginCubit,
      child: Scaffold(
        body: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
          return Form(
            key: context.read<LoginCubit>().globalKey,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 40),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 6,
                      ),
                      Text(
                        "تسجيل دخول",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "title",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 8,
                      ),
                      TextFieldAuth(
                        isLast: false,
                        title: "البريد الالكتروني",
                        type: "email",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      TextFieldAuth(
                        isLast: true,
                        flag: context.read<LoginCubit>().passFlag,
                        onTap: () {
                          context.read<LoginCubit>().seeAndHide();
                        },
                        title: "كلمة المرور ",
                        type: "pass",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 160,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("نسيت كلمة المرور؟",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "title",
                                  color: myColor.myPurple)),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      BottonAuth(
                        text: " الدخول",
                        isBorder: false,
                        onTap: () {
                          
                          context.read<LoginCubit>().goToHome();
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 160,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("createAccount");
                            },
                            child: Text("ليس لديك حساب؟",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: "title",
                                    color: myColor.myPurple)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 40,
                          ),
                          Text("انشاء حساب",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "title",
                                  color: myColor.myDeepGray)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
