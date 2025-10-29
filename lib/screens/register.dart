import 'package:flutter/material.dart';

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
                  Image.asset(
                    "image/logo2.png",
                    height: 72,
                    width: 72,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Let’s Get Started',
                    style: TextStyle(
                      color: Color(0xff223263),
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9098B1),
                    ),
                    'Create an new account',
                  ),
                  SizedBox(height: 30),
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
                          r'^[a-zA-Z0-9._-\s]{3,20}$',
                        ).hasMatch(value);
                        if (!nameValid) {
                          return "Enter Valid username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          color: Color(0xFF9098B1),
                        ),

                        prefixIcon: Icon(
                          Icons.person_outline,
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
                  SizedBox(height: 10),
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
                              'Sign up',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'have a account?',
                        style: TextStyle(color: Color(0xFF9098B1)),
                      ),
                      SizedBox(width: 2.5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Text(
                          'Sign In',
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
