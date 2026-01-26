import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/views/loginPage/components/intro_header_component.dart';
import 'package:train/views/loginPage/components/new_account_component.dart';
import 'package:train/views/loginPage/components/social_media_component.dart';
import 'package:train/views/loginPage/components/text_fields_component.dart';
import 'package:train/views/loginPage/controller/login_cubit.dart';
import 'package:train/views/loginPage/controller/login_state.dart';
import 'package:train/views/loginPage/widgets/or_Widget.dart';
import 'package:train/views/loginPage/widgets/signIn_Button.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginCubit loginCubit = LoginCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginCubit,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: loginCubit.loginModel.formField,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntroHeaderComponent(),
                    const SizedBox(height: 30),
                    TextFieldsComponents(),
                    const SizedBox(height: 20),

                    BlocListener<LoginCubit, LoginState>(
                      listener: (context, state) {
                        if (state is LoginSuccess) {
                          // Navigator.pushReplacement(...)
                        } else if (state is LoginError) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.message)),
                          );
                        }
                      },
                      child: signInButton(),
                    ),

                    const SizedBox(height: 20),
                    OrWidget(),
                    const SizedBox(height: 20),
                    SocialMediaComponent(),
                    const SizedBox(height: 20),
                    NewAccountComponent(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
