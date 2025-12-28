import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/core/model/register_model.dart';
import 'package:train/views/registerPage/components/have_account_component.dart';
import 'package:train/views/registerPage/components/intro_hearder_component.dart';
import 'package:train/views/registerPage/components/text_fields_components.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'widgets/sign_in_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    RegisterCubit cubit = RegisterCubit();
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: cubit.registerModel.formField,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntroHeaderComponent(),
                    const SizedBox(height: 30),

                    TextFieldsComponents(),

                    const SizedBox(height: 20),

                    signInButton(),

                    const SizedBox(height: 20),

                    HaveAccountComponent(),
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
