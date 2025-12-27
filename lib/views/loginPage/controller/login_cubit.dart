import 'package:bloc/bloc.dart';
import 'package:train/core/model/login_model.dart';
import 'package:train/views/loginPage/controller/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginModel loginModel = LoginModel();
  bool passToggel = true;

  void login() async {}
}
