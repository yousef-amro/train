import 'package:flutter/material.dart';
import 'package:train/views/loginPage/components/intro_header_component.dart';
import 'package:train/views/loginPage/components/new_account_component.dart';
import 'package:train/views/loginPage/components/social_media_component.dart';
import 'package:train/views/loginPage/components/text_fields_component.dart';
import 'package:train/views/loginPage/widgets/or_Widget.dart';
import 'package:train/views/loginPage/widgets/signIn_Button.dart';
import 'package:train/core/constants/appColorsConstants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final formfield = GlobalKey<FormState>();
final emailController = TextEditingController();
final passController = TextEditingController();
bool passToggel = true;

class _LoginScreenState extends State<LoginScreen> {
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
    );
  }
}
