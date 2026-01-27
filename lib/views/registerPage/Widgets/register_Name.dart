import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'package:train/core/constants/validatesConstants.dart';

class RegisterName extends StatelessWidget {
  const RegisterName({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterCubit cubit = context.read<RegisterCubit>();
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: TextFormField(
        controller: cubit.registerModel.nameController,

        validator: (value) {
          if (value!.isEmpty) {
            return "nameMessage".tr();
          }
          bool nameValid = RegExp(Validates.name).hasMatch(value);
          if (!nameValid) {
            return "Enter Valid username";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'Full Name',
          hintStyle: TextStyle(color: AppColors.baliHai),

          prefixIcon: Icon(
            Icons.person_outline,
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
