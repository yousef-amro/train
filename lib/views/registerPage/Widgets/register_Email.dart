import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/view.dart';
import 'package:train/core/constants/validatesConstants.dart';

class RegisterEmail extends StatelessWidget {
  const RegisterEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),

      child: TextFormField(
        controller: regEmailController,

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
          border: defaultBorder(),
          enabledBorder: defaultBorder(),
          focusedBorder: defaultBorder(color: AppColors.dodgerBlue),
        ),
      ),
    );
  }

  OutlineInputBorder defaultBorder({
    Color color = AppColors.zircon,
  }) => OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(width: 2, color: color),
  );
}
