import 'dart:ffi';
import 'package:education_app/constants/my_color.dart';
import 'package:education_app/presentation/widget/auth/botton_auth.dart';
import 'package:education_app/presentation/widget/auth/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/auth/login/cubit/create_account/cubit/create_account_cubit.dart';
import '../../widget/auth/create_account/create1.dart';
import '../../widget/auth/create_account/create3.dart';
import '../../widget/auth/create_account/create4.dart';
import '../../widget/auth/create_account/create2.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  MyColor myColor = MyColor();
  late CreateAccountCubit createAccountCubit;

  @override
  void initState() {
    createAccountCubit = CreateAccountCubit();
    super.initState();
  }

  @override
  void dispose() {
    createAccountCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createAccountCubit,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 40),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Expanded(
              child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
                builder: (context, state) {
                  return PageView.builder(
                    //  physics: NeverScrollableScrollPhysics(),
                    controller:
                        context.read<CreateAccountCubit>().pageController,
                    itemCount: 4,
                    itemBuilder: (context, index) => ListView(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            Text(
                              "انشاء حسابي الخاص",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: "title",
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "الخطوة ${index + 1} من 4",
                              style: TextStyle(
                                  color: myColor.myPurple,
                                  fontFamily: "title",
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            context
                                .read<CreateAccountCubit>()
                                .createAccount[index],
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (index != 0)
                                  BottonAuth(
                                    onTap: () {
                                      context
                                          .read<CreateAccountCubit>()
                                          .createAccountBotton(
                                              'previous', index);
                                    },
                                    text: "السابق",
                                    isBorder: true,
                                  ),
                                if (index != 0) Spacer(),
                                BottonAuth(
                                  onTap: () {
                                    context
                                        .read<CreateAccountCubit>()
                                        .createAccountBotton('next', index);
                                  },
                                  text: (index == 3) ? "تسجيل" : "التالي",
                                  isBorder: false,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
