import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/components/have_account_component.dart';
import 'package:train/views/registerPage/components/intro_hearder_component.dart';
import 'package:train/views/registerPage/components/text_fields_components.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'package:train/views/registerPage/controller/register_state.dart';
import 'widgets/sign_up_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterCubit cubit = RegisterCubit();
  @override
  Widget build(BuildContext context) {
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

                    BlocListener<RegisterCubit, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterSuccess) {
                          // Navigator.pushReplacement(...)
                        } else if (state is RegisterError) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.message)),
                          );
                        }
                      },
                      child: const SignUpButton(),
                    ),

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
