import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/views/loginPage/controller/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/core/constants/validatesConstants.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = context.read<LoginCubit>();
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: TextFormField(
        controller: cubit.loginModel.emailController,

        keyboardType: TextInputType.emailAddress,

        validator: (value) {
          if (value!.isEmpty) {
            return 'emailMessage'.tr();
          }
          bool emailValid = RegExp(Validates.email).hasMatch(value);
          if (!emailValid) {
            return "Enter Valid Email";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'emailMessage'.tr(),
          hintStyle: TextStyle(color: AppColors.baliHai),

          prefixIcon: Icon(
            Icons.mail_outline,
            color: AppColors.baliHai,
          ),

          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 2, color: AppColors.zircon),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 2, color: AppColors.zircon),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 2, color: AppColors.blue),
          ),
        ),
      ),
    );
  }
}
