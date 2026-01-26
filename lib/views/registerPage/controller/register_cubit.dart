import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:train/core/model/register_model.dart';
import 'package:train/core/rebo/user_repo.dart';
import 'package:train/views/homePage/view.dart';
import 'package:train/views/registerPage/controller/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  RegisterModel registerModel = RegisterModel();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void register(BuildContext context) async {
    if (registerModel.isValid) {
      try {
        emit(RegisterLoading());
        await _auth.createUserWithEmailAndPassword(
          email: registerModel.regEmailController.text,
          password: registerModel.passController1.text,
        );
        await UsersRepo().saveCurrentUser(
          name: registerModel.nameController.text,
          email: registerModel.regEmailController.text,
        );
        emit(RegisterSuccess());

        registerModel.clearInputs();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
          (route) => false, // remove everything
        );
      } catch (e, s) {
        emit(RegisterError(e.toString()));

        print("${(e is FirebaseAuthException ? e.code : e)}");
        print("e : $e , s $s");
      }
    }
  }
}
