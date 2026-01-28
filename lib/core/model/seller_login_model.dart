import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SellerLoginModel {
  final GlobalKey<FormState> formField = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(
    text: kDebugMode ? "yoyo20077pc@gmail.com" : "",
  );
  final TextEditingController passController = TextEditingController(
    text: kDebugMode ? "12341234" : "",
  );

  SellerLoginModel();

  bool get isValid {
    if (formField.currentState!.validate()) {
      return true;
    }
    return false;
  }

  void clearInputs() {
    emailController.clear();
    passController.clear();
  }
}
