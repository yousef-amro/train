import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/sellerLoginPage/controller/login_cubit.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.controller,
    required this.obscure,
    required this.onToggle,
  });

  final TextEditingController controller;
  final bool obscure;
  final VoidCallback onToggle;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    final LoginCubit sellerLoginCubit = context.read<LoginCubit>();
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: TextFormField(
        controller: sellerLoginCubit.loginModel.passController,
        obscureText: widget.obscure,
        validator: (value) {
          if (value == null || value.isEmpty) return "Enter Password";
          if (value.length < 6) {
            return "Password Length Should be more than 6 characters";
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: widget.onToggle,
            child: Icon(
              widget.obscure
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: AppColors.baliHai,
          ),
          hintText: 'Password',
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
            borderSide: BorderSide(color: AppColors.blue, width: 2),
          ),
        ),
      ),
    );
  }
}
