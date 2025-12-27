import 'package:flutter/material.dart';

class LoginModel {
  final GlobalKey<FormState> formField = GlobalKey<FormState>();
  final TextEditingController emailController =
      TextEditingController();
  final TextEditingController passController =
      TextEditingController();

  LoginModel();

  bool get isValid {
    if (formField.currentState!.validate()) {
      print('Success');
      emailController.clear();
      passController.clear();
      return true;
    }
    return false;
  }
}
