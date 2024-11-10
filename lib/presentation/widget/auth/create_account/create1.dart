import 'package:education_app/business_logic/auth/login/cubit/create_account/cubit/create_account_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../text_field_auth.dart';

class Create1 extends StatelessWidget {
  const Create1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        return Form(
          key: context.read<CreateAccountCubit>().globalKeys[0],
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  TextFieldAuth(
                    title: "الاسم الاول",
                    type: "firstName",
                    isLast: false,
                    size: MediaQuery.of(context).size.width / 2.2,
                  ),
                  Spacer(),
                  TextFieldAuth(
                    title: "الاسم الاوسط",
                    type: "secondName",
                    isLast: false,
                    size: MediaQuery.of(context).size.width / 2.2,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFieldAuth(
                title: " الاسم الاخير",
                type: "lastName",
                isLast: false,
                size: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFieldAuth(
                title: "البريد الالكتروني",
                type: "email",
                isLast: false,
                size: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  TextFieldAuth(
                    flag: context.read<CreateAccountCubit>().isHide,
                    onTap: () {
                      context.read<CreateAccountCubit>().seeAndHide(1);
                    },
                    title: " كلمة المرور",
                    type: "pass",
                    isLast: false,
                    size: MediaQuery.of(context).size.width / 2.2,
                  ),
                  Spacer(),
                  TextFieldAuth(
                    flag: context.read<CreateAccountCubit>().isHide2,
                    onTap: () {
                      context.read<CreateAccountCubit>().seeAndHide(2);
                    },
                    title: " تاكيد كلمة المرور",
                    type: "pass",
                    isLast: false,
                    size: MediaQuery.of(context).size.width / 2.2,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFieldAuth(
                title: "رقم الهاتف ",
                type: "phone",
                isLast: true,
                size: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        );
      },
    );
  }
}
