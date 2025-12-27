import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:train/core/model/login_model.dart';
import 'package:train/views/loginPage/controller/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginModel loginModel = LoginModel();
  bool passToggel = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void login() async {
    if (loginModel.isValid) {
      UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(
            email: loginModel.emailController.text,
            password: loginModel.passController.text,
          );
      if (userCredential.credential == null) {
        // Show to user snack bar with error message says User not found
      } else {
        // Redirect user to HomePage
      }
    }
  }
}
