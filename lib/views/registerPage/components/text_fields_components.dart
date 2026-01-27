import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'package:train/views/registerPage/widgets/register_Email.dart';
import 'package:train/views/registerPage/widgets/register_Name.dart';

class TextFieldsComponents extends StatefulWidget {
  const TextFieldsComponents({super.key});

  @override
  State<TextFieldsComponents> createState() =>
      _TextFieldsComponentsState();
}

class _TextFieldsComponentsState extends State<TextFieldsComponents> {
  @override
  Widget build(BuildContext context) {
    final RegisterCubit cubit = context.read<RegisterCubit>();
    return Column(
      children: [
        RegisterName(),

        const SizedBox(height: 10),

        RegisterEmail(),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: TextFormField(
            controller: cubit.registerModel.passController1,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter Password";
              }
              if (value.length < 6) {
                return "Password Length Should be more than 6 characters";
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline,
                color: AppColors.baliHai,
              ),
              hintText: 'hint',
              hintStyle: TextStyle(color: AppColors.baliHai),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  width: 2.5,
                  color: AppColors.zircon,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  width: 2.5,
                  color: AppColors.zircon,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  color: AppColors.blue,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: TextFormField(
            controller: cubit.registerModel.passController2,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter Password";
              }
              if (value.length < 6) {
                return "Password Length Should be more than 6 characters";
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline,
                color: AppColors.baliHai,
              ),
              hintText: 'hint',
              hintStyle: TextStyle(color: AppColors.baliHai),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  width: 2.5,
                  color: AppColors.zircon,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  width: 2.5,
                  color: AppColors.zircon,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  color: AppColors.blue,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
