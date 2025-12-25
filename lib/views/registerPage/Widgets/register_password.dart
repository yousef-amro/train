import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.controller,
    required this.otherController,
    required this.obscure,
    required this.onToggle,
    required this.hint,
  });

  final TextEditingController controller;
  final TextEditingController? otherController;
  final bool obscure;
  final VoidCallback onToggle;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        validator: (value) {
          if (value == null || value.isEmpty) return "Enter Password";
          if (value.length < 6)
            return "Password Length Should be more than 6 characters";
          if (otherController != null &&
              otherController!.text != controller.text) {
            return "Password doesn't match";
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: onToggle,
            child: Icon(
              obscure ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: AppColors.baliHai,
          ),
          hintText: hint,
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
              color: AppColors.dodgerBlue,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
