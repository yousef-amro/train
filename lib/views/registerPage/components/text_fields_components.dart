import 'package:flutter/material.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'package:train/views/registerPage/widgets/register_password.dart';
import 'package:train/views/registerPage/widgets/register_Email.dart';
import 'package:train/views/registerPage/widgets/register_Name.dart';
import 'package:train/views/registerPage/view.dart';

class TextFieldsComponents extends StatefulWidget {
  const TextFieldsComponents({super.key});

  @override
  State<TextFieldsComponents> createState() =>
      _TextFieldsComponentsState();
}

class _TextFieldsComponentsState extends State<TextFieldsComponents> {
  @override
  Widget build(BuildContext context) {
    RegisterCubit cubit = RegisterCubit();
    return Column(
      children: [
        RegisterName(),

        const SizedBox(height: 10),

        RegisterEmail(),

        const SizedBox(height: 10),

        PasswordField(
          controller: cubit.registerModel.passController1,
          obscure: cubit.registerModel.passToggle1,
          hint: 'Password',
          otherController: null,
          onToggle: () => setState(
            () => cubit.registerModel.passToggle1 =
                !cubit.registerModel.passToggle1,
          ),
        ),
        const SizedBox(height: 10),

        PasswordField(
          controller: cubit.registerModel.passController2,
          obscure: cubit.registerModel.passToggle2,
          hint: 'Password Again',
          otherController: null,
          onToggle: () => setState(
            () => cubit.registerModel.passToggle2 =
                !cubit.registerModel.passToggle2,
          ),
        ),
      ],
    );
  }
}
