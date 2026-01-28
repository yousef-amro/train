import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterModel {
  final GlobalKey<FormState> formField = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController(
    text: kDebugMode ? "yousef amr" : "",
  );
  final TextEditingController regEmailController =
      TextEditingController(
        text: kDebugMode ? "yoyo2007pc@gmail.com" : "",
      );
  final TextEditingController passController1 = TextEditingController(
    text: kDebugMode ? "12341234" : "",
  );
  final TextEditingController passController2 = TextEditingController(
    text: kDebugMode ? "12341234" : "",
  );
  bool passToggle1 = false;
  bool passToggle2 = false;
  late String dropdownValue;

  RegisterModel();

  bool get isValid {
    if (formField.currentState!.validate()) {
      return true;
    }
    return false;
  }

  void clearInputs() {
    nameController.clear();
    regEmailController.clear();
    passController1.clear();
    passController2.clear();
  }
}
