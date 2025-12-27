import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/loginPage/controller/login_cubit.dart';

class signInButton extends StatelessWidget {
  const signInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = context.read<LoginCubit>();

    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x3D40BFFF),
              offset: Offset(0, 10),
              blurRadius: 30,
            ),
          ],
        ),
        child: RawMaterialButton(
          fillColor: AppColors.dodgerBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0,
          onPressed: () {
            bool isValid = cubit.loginModel.isValid;
          },
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Center(
              child: Text(
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
                "singInButton".tr(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
