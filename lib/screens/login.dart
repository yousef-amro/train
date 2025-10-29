import 'package:flutter/material.dart';
import 'package:train/core/constants.dart';
import 'package:train/screens/register.dart';
import 'package:train/core/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggel = true;

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
                  Image.asset(Images.logo2, height: 72, width: 72),
                  const SizedBox(height: 15),
                  Text(
                    'Welcome to Lafyuu',
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
                    'Sign in to continue',
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    // ================================================
                    child: TextFormField(
                      controller:
                          emailController, // ✅ هنا ضفنا الكنترولر

                      keyboardType: TextInputType.emailAddress,

                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        bool emailValid = RegExp(
                          Validates.email,
                        ).hasMatch(value);
                        if (!emailValid) {
                          return "Enter Valid Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        hintStyle: TextStyle(
                          color: AppColors.baliHai,
                        ),

                        prefixIcon: Icon(
                          Icons.mail_outline,
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
                            width: 2,
                            color: AppColors.zircon,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            width: 2,
                            color: AppColors.zircon,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            width: 2,
                            color: AppColors.dodgerBlue,
                          ), // لون عند الضغط
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // ================================================
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

                        child: const SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: Center(
                            child: Text(
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                              'Sign In',
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
                          'OR',
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      hoverColor: AppColors.zircon,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColors.zircon,
                          width: 1.5,
                        ), // الإطار الأسود
                        borderRadius: BorderRadius.circular(
                          5,
                        ), // لتدوير الزوايا (اختياري)
                      ),
                      elevation: 0,
                      onPressed: () {},
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Stack(
                          alignment: AlignmentGeometry.centerLeft,

                          children: [
                            Image.asset(
                              Images.googlelogo,
                              width: 50, // العرض
                              height: 50, // الطول
                            ),
                            Center(
                              child: Text(
                                style: TextStyle(
                                  color: AppColors.baliHai,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                                'Login with Google',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      hoverColor: AppColors.zircon,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColors.zircon,
                          width: 1.5,
                        ), // الإطار الأسود
                        borderRadius: BorderRadius.circular(
                          5,
                        ), // لتدوير الزوايا (اختياري)
                      ),
                      elevation: 0,
                      onPressed: () {},
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Stack(
                          alignment: AlignmentGeometry.centerLeft,

                          children: [
                            Image.asset(
                              Images.facebooklogo,
                              width: 50, // العرض
                              height: 50, // الطول
                            ),
                            Center(
                              child: Text(
                                style: TextStyle(
                                  color: AppColors.baliHai,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                                'Login with facebook',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('yoyo');
                      });
                    },
                    child: Text(
                      'Forgot Password?',
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
                        'Don’t have a account?',
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
                          'Register',
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
