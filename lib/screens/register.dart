import 'package:flutter/material.dart';
import 'package:train/core/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final _formfield = GlobalKey<FormState>();
final nameController = TextEditingController();
final emailController = TextEditingController();
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
              key: _formfield,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.logo2, height: 72, width: 72),
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
                    child: TextFormField(
                      controller:
                          nameController, // ✅ هنا ضفنا الكنترولر

                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Your Full Name";
                        }
                        bool nameValid = RegExp(
                          Validates.name,
                        ).hasMatch(value);
                        if (!nameValid) {
                          return "Enter Valid username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          color: AppColors.baliHai,
                        ),

                        prefixIcon: Icon(
                          Icons.person_outline,
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: TextFormField(
                      controller:
                          passController1, // ✅ هنا ضفنا الكنترولر
                      obscureText: passToggel1,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passController1.text.length < 6) {
                          return " Password Length Should be more than 6 characters";
                        } else if (passController2.text !=
                            passController1.text) {
                          return "Password doesn't match ";
                        }

                        return null;
                      },

                      decoration: InputDecoration(
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passToggel1 = !passToggel1;
                            });
                          },
                          child: Icon(
                            passToggel1
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
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: TextFormField(
                      controller:
                          passController2, // ✅ هنا ضفنا الكنترولر
                      obscureText: passToggel2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passController2.text.length < 6) {
                          return " Password Length Should be more than 6 characters";
                        } else if (passController2.text !=
                            passController1.text) {
                          return "Password doesn't match ";
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passToggel2 = !passToggel2;
                            });
                          },
                          child: Icon(
                            passToggel2
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 0,
                        onPressed: () {
                          if (_formfield.currentState!.validate()) {
                            print('Success');
                            nameController.clear();
                            emailController.clear();
                            passController1.clear();
                            passController2.clear();
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
                              'Sign up',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'have a account?',
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
                          'Sign In',
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
