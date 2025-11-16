import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:train/core/constants.dart';
import 'package:train/screens/register.dart';
import 'package:train/core/widgets.dart';
import 'package:train/core/Localization.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formfield = GlobalKey<FormState>();
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
              key: _formfield,

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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    // =============== Email Text Field ====================
                    child: TextFields.emailTextField,
                  ),
                  const SizedBox(height: 10),
                  // ==============Password Text Field====================
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: TextFormField(
                      controller:
                          passController, // ✅ هنا ضفنا الكنترولر
                      obscureText: passToggel,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passController.text.length < 6) {
                          return " Password Length Should be more than 6 characters";
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passToggel = !passToggel;
                            });
                          },
                          child: Icon(
                            passToggel
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: AppColors.baliHai,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: AppColors.baliHai,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius
                              .zero, // مستطيل تمامًا بدون زوايا دائرية
                          borderSide: BorderSide(
                            width: 2.5,
                            color: AppColors.zircon,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            width: 2.5,
                            color: AppColors.zircon,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: AppColors.dodgerBlue,
                            width: 2,
                          ), // لون عند الضغط
                        ),
                      ),
                    ),
                    //  // ================== Sign in button ================
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3D40BFFF),
                            offset: Offset(0, 10),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      child: RawMaterialButton(
                        fillColor: AppColors.dodgerBlue,
                        shape: RoundedRectangleBorder(
                          // الإطار الأسود
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 0,
                        onPressed: () {
                          if (_formfield.currentState!.validate()) {
                            print('Success');
                            emailController.clear();
                            passController.clear();
                          }
                        },

                        child: SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: Center(
                            child: Text(
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                              "singInButton".tr(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      const SizedBox(width: 15),
                      Expanded(
                        child: Container(
                          color: AppColors.zircon,
                          height: 2,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                        ),
                        child: Text(
                          'or'.tr(),
                          style: TextStyle(
                            color: AppColors.baliHai,
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: AppColors.zircon,
                          height: 2,
                          width: double.infinity,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),

                  const SizedBox(height: 20),
                  // ================== Google sing in buton ================
                  TextFields.GoogleSignIn,
                  const SizedBox(height: 10),
                  // ================== Facebook sing in buton ================
                  TextFields.FacebookeSignIn,
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
