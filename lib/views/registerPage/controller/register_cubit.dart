import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:train/core/model/register_model.dart';
import 'package:train/views/appScreen/view.dart';
import 'package:train/views/registerPage/controller/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  RegisterModel registerModel = RegisterModel();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void register(BuildContext context) async {
    if (registerModel.isValid) {
      try {
        await _auth.createUserWithEmailAndPassword(
          email: registerModel.regEmailController.text,
          password: registerModel.passController1.text,
        );
        registerModel.clearInputs();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const AppScreen()),
          (route) => false, // remove everything
        );
      } catch (e, s) {
        print("${(e is FirebaseAuthException ? e.code : e)}");
        print("e : $e , s $s");
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }
}
