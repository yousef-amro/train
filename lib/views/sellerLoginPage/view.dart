import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/views/sellerLoginPage/components/intro_header_component.dart';
import 'package:train/views/sellerLoginPage/components/new_account_component.dart';
import 'package:train/views/sellerLoginPage/components/text_fields_component.dart';
import 'package:train/views/sellerLoginPage/controller/seller_login_cubit.dart';
import 'package:train/views/sellerLoginPage/controller/seller_login_state.dart';
import 'package:train/views/sellerLoginPage/widgets/signIn_Button.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class SellerLoginScreen extends StatefulWidget {
  const SellerLoginScreen({super.key});

  @override
  State<SellerLoginScreen> createState() => _SellerLoginScreenState();
}

class _SellerLoginScreenState extends State<SellerLoginScreen> {
  SellerLoginCubit sellerLoginCubit = SellerLoginCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sellerLoginCubit,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Form(
              key: sellerLoginCubit.loginModel.formField,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IntroHeaderComponent(),
                  const SizedBox(height: 30),
                  TextFieldsComponents(),
                  const SizedBox(height: 20),

                  BlocListener<SellerLoginCubit, SellerLoginState>(
                    listener: (context, state) {
                      if (state is SellerLoginSuccess) {
                        // Navigator.pushReplacement(...)
                      } else if (state is SellerLoginError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.message)),
                        );
                      }
                    },
                    child: signInButton(),
                  ),
                  const SizedBox(height: 20),
                  NewAccountComponent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
