import 'package:education_app/constants/my_text.dart';
import 'package:education_app/presentation/widget/auth/drop_down_auth.dart';
import 'package:education_app/presentation/widget/auth/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business_logic/auth/login/cubit/create_account/cubit/create_account_cubit.dart';

class Create2 extends StatefulWidget {
  Create2({super.key});

  @override
  State<Create2> createState() => _Create2State();
}

MyText myText = MyText();

class _Create2State extends State<Create2> {
  @override
  void initState() {
    context.read<CreateAccountCubit>().startBulid();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        return Form(
          key: context.read<CreateAccountCubit>().globalKeys[1],
          child: Column(
            children: [
              Row(
                children: [
                  DropDownAuth(
                    title: " الشعبة",
                    size: MediaQuery.of(context).size.width / 2.2,
                    list: myText.division,
                    value: context.read<CreateAccountCubit>().division,
                  ),
                  Spacer(),
                  DropDownAuth(
                    title: "الصف الدراسي",
                    size: MediaQuery.of(context).size.width / 2.2,
                    list: myText.gragdes,
                    value: context.read<CreateAccountCubit>().grade,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                children: [
                  DropDownAuth(
                    title: "المنطقة / المدينة",
                    size: MediaQuery.of(context).size.width / 2.2,
                    list: myText.governorateAreas![
                        context.read<CreateAccountCubit>().government]!,
                    value: context.read<CreateAccountCubit>().area,
                  ),
                  Spacer(),
                  DropDownAuth(
                    title: " المحافظة",
                    size: MediaQuery.of(context).size.width / 2.2,
                    list: myText.governorates,
                    value: context.read<CreateAccountCubit>().government,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              DropDownAuth(
                title: " النوع ",
                size: MediaQuery.of(context).size.width,
                list: myText.gender,
                value: context.read<CreateAccountCubit>().gender,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFieldAuth(
                title: "اسم المدرسة",
                type: "school",
                isLast: true,
                size: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                children: [
                  DropDownAuth(
                    size: MediaQuery.of(context).size.width / 3.4,
                    title: "",
                    value: context.read<CreateAccountCubit>().day,
                    list: myText.monthDaysInArabic![context.read<CreateAccountCubit>().month]!,
                  ),
                  Spacer(),
                  DropDownAuth(
                    size: MediaQuery.of(context).size.width / 3.4,
                    title: "",
                    list: myText.months,
                    value: context.read<CreateAccountCubit>().month,
                  ),
                  Spacer(),
                  DropDownAuth(
                    size: MediaQuery.of(context).size.width / 3.4,
                    title: "تاريخ الميلاد",
                    list: myText.years,
                    value: context.read<CreateAccountCubit>().year,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
