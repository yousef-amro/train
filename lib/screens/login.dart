import 'package:flutter/material.dart';
import 'package:train/screens/register.dart';

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
                  Image.asset(
                    "image/logo2.png",
                    height: 72,
                    width: 72,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Welcome to Lafyuu',
                    style: TextStyle(
                      color: Color(0xff223263),
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9098B1),
                    ),
                    'Sign in to continue',
                  ),
                  SizedBox(height: 30),
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
                          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+$",
                        ).hasMatch(value);
                        if (!emailValid) {
                          return "Enter Valid Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        hintStyle: TextStyle(
                          color: Color(0xFF9098B1),
                        ),

                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Color(0xFF9098B1),
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
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color(0xFFEBF0FF),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFFEBF0FF),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFF40BFFF),
                          ), // لون عند الضغط
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

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
                          color: Color(0xFF9098B1),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xFF9098B1),
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
                          borderSide: const BorderSide(
                            width: 2.5,
                            color: Color(0xFFEBF0FF),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            width: 2.5,
                            color: Color(0xFFEBF0FF),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: Color(0xFF40BFFF),
                            width: 2,
                          ), // لون عند الضغط
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                        fillColor: Color(0xff40BFFF),
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
                              'Sign In',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 15),
                      Expanded(
                        child: Container(
                          color: Color(0xFFEBF0FF),
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
                            color: Color(0xff9098B1),
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Color(0xFFEBF0FF),
                          height: 2,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      hoverColor: Color(0xFFEBF0FF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFFEBF0FF),
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
                              'image/Google.png',
                              width: 50, // العرض
                              height: 50, // الطول
                            ),
                            Center(
                              child: Text(
                                style: TextStyle(
                                  color: Color(0xff9098B1),
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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      hoverColor: Color(0xFFEBF0FF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFFEBF0FF),
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
                              'image/Facebook.png',
                              width: 50, // العرض
                              height: 50, // الطول
                            ),
                            Center(
                              child: Text(
                                style: TextStyle(
                                  color: Color(0xff9098B1),
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

                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('yoyo');
                      });
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'Don’t have a account?',
                        style: TextStyle(color: Color(0xFF9098B1)),
                      ),
                      SizedBox(width: 2.5),
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
                            color: Color(0xff40BFFF),
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
