import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/views/sellerLoginPage/controller/login_cubit.dart';
import 'package:train/views/sellerLoginPage/widgets/login_Email.dart';
import 'package:train/views/sellerLoginPage/widgets/login_Password.dart';

class TextFieldsComponents extends StatefulWidget {
  const TextFieldsComponents({super.key});

  @override
  State<TextFieldsComponents> createState() =>
      _TextFeildsComponentsState();
}

class _TextFeildsComponentsState extends State<TextFieldsComponents> {
  @override
  Widget build(BuildContext context) {
    final LoginCubit sellerLoginCubit = context.read<LoginCubit>();

    return Column(
      children: [
        LoginEmail(),

        const SizedBox(height: 10),

        PasswordField(
          controller: sellerLoginCubit.loginModel.passController,
          obscure: sellerLoginCubit.passToggel,
          onToggle: () => setState(
            () => sellerLoginCubit.passToggel =
                !sellerLoginCubit.passToggel,
          ),
        ),
      ],
    );
  }
}
