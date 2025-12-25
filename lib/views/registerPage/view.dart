import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:train/core/Localization/Localization.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/Widgets/registerEmail.dart';
import 'package:train/views/registerPage/Widgets/registerName.dart';
import 'package:train/core/constants/imagesConstants.dart';
import 'Widgets/register_password.dart';
import 'Widgets/sign_in_button.dart';

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
      backgroundColor: Color(0xffffffff),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formfield,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            AppLocalizationsHelper.changeLanguage(
                              context,
                            );
                          });
                        },
                        child: Text('trans'),
                      ),
                    ],
                  ),
                  Image.asset(assets.logo2, height: 72, width: 72),
                  const SizedBox(height: 15),
                  Text(
                    'Let’s Get Started',
                    style: TextStyle(
                      color: Color(0xff223263),
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.baliHai,
                    ),
                    'Create an new account',
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    //_________________________________________
                    child: RegisterName(),
                    //_________________________________________
                  ),
                  const SizedBox(height: 10),
                  //_________________________________________
                  RegisterEmail(),
                  //_________________________________________
                  const SizedBox(height: 10),

                  PasswordField(
                    controller: passController1,
                    obscure: passToggel1,
                    hint: 'Password',
                    otherController: null,
                    onToggle: () =>
                        setState(() => passToggel1 = !passToggel1),
                  ),
                  const SizedBox(height: 10),

                  PasswordField(
                    controller: passController2,
                    obscure: passToggel2,
                    hint: 'Password Again',
                    otherController: passController1,
                    onToggle: () =>
                        setState(() => passToggel2 = !passToggel2),
                  ),

                  const SizedBox(height: 20),

                  signInButton(),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'haveacc'.tr(),
                        style: TextStyle(color: AppColors.baliHai),
                      ),
                      const SizedBox(width: 2.5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Text(
                          'singInButton'.tr(),
                          style: TextStyle(
                            color: AppColors.dodgerBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
