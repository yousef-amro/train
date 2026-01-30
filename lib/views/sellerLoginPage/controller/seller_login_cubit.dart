import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:train/core/datasources/auth.dart';
import 'package:train/core/model/seller_login_model.dart';
import 'package:train/views/sellerLoginPage/controller/seller_login_state.dart';
import 'package:train/views/sellerPage/view.dart';

class SellerLoginCubit extends Cubit<SellerLoginState> {
  SellerLoginCubit() : super(SellerLoginInitial());

  SellerLoginModel loginModel = SellerLoginModel();
  bool passToggel = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void login(BuildContext context) async {
    if (loginModel.isValid) {
      try {
        emit(SellerLoginLoading());
        await _auth.signInWithEmailAndPassword(
          email: loginModel.emailController.text,
          password: loginModel.passController.text,
        );

        final result = await AuthDataSource.getUser();
        if (result.isSeller) {
          emit(SellerLoginSuccess());
          loginModel.clearInputs();
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const SellerPage()),
            (route) => false,
          );
        } else {
          emit(SellerLoginError('Account credential incorrect'));
          FirebaseAuth.instance.signOut();
        }
      } catch (e) {
        emit(SellerLoginError(e.toString()));
      }
    }
  }
}
