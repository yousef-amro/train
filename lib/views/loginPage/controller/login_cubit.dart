import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:train/core/model/login_model.dart';
import 'package:train/views/appScreen/view.dart';
import 'package:train/views/loginPage/controller/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginModel loginModel = LoginModel();
  bool passToggel = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void login(BuildContext context) async {
    if (loginModel.isValid) {
      try {
        emit(LoginLoading());
        await _auth.signInWithEmailAndPassword(
          email: loginModel.emailController.text,
          password: loginModel.passController.text,
        );
        emit(LoginSuccess());
        loginModel.clearInputs();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AppScreen()),
        );
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    }
  }
}
