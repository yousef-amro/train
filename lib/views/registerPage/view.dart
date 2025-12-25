import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/components/have_account_component.dart';
import 'package:train/views/registerPage/components/intro_hearder_component.dart';
import 'package:train/views/registerPage/components/text_fields_components.dart';
import 'widgets/sign_in_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final formfield = GlobalKey<FormState>();
final nameController = TextEditingController();
final regEmailController = TextEditingController();
final passController1 = TextEditingController();
final passController2 = TextEditingController();
bool passToggel1 = true;
bool passToggel2 = true;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formfield,
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
    );
  }
}
