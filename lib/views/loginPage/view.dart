import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/loginPage/Widgets/facobookButton.dart';
import 'package:train/views/loginPage/Widgets/googleButton.dart';
import 'package:train/views/loginPage/Widgets/loginPassword.dart';
import 'package:train/views/loginPage/Widgets/orWidget.dart';
import 'package:train/views/loginPage/Widgets/signInButton.dart';
import 'package:train/views/registerPage/view.dart';
import 'package:train/views/Localization/Localization.dart';
import 'Widgets/loginEmail.dart';
import 'package:train/core/constants/imagesConstants.dart';

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
                  Image.asset(Images.logo2, height: 72, width: 72),
                  const SizedBox(height: 15),
                  Text(
                    'welcome'.tr(),
                    style: TextStyle(
                      color: AppColors.cello,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.baliHai,
                    ),
                    'singInMessage'.tr(),
                  ),
                  const SizedBox(height: 30),

                  LoginEmail(),

                  const SizedBox(height: 10),

                  PasswordField(
                    controller: passController,
                    obscure: passToggel,
                    onToggle: () =>
                        setState(() => passToggel = !passToggel),
                  ),

                  const SizedBox(height: 20),

                  signInButton(),

                  const SizedBox(height: 20),

                  OrWidget(),

                  const SizedBox(height: 20),
                  // ================== Google sing in buton ================
                  GoogleLoginButton(),
                  const SizedBox(height: 10),
                  // ================== Facebook sing in buton ================
                  FaceBookLoginButton(),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('yoyo');
                      });
                    },
                    child: Text(
                      'forgotPassword'.tr(),
                      style: TextStyle(
                        color: AppColors.dodgerBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'donthaveacc'.tr(),
                        style: TextStyle(color: AppColors.baliHai),
                      ),
                      const SizedBox(width: 2.5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    RegisterScreen(),
                              ),
                            );
                          });
                        },
                        child: Text(
                          'Register'.tr(),
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
