import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterModel {
  final GlobalKey<FormState> formField = GlobalKey<FormState>();
  final TextEditingController nameController =
      TextEditingController();
  final TextEditingController regEmailController =
      TextEditingController();
  final TextEditingController passController1 =
      TextEditingController();
  final TextEditingController passController2 =
      TextEditingController();
  bool passToggle1 = true;
  bool passToggle2 = true;

  RegisterModel();

  bool get isValid {
    if (formField.currentState!.validate()) {
      print('Success');
      nameController.clear();
      regEmailController.clear();
      passController1.clear();
      passController2.clear();
      return true;
    }
    return false;
  }
}
