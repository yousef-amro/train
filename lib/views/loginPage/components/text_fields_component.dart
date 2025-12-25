import 'package:flutter/material.dart';
import 'package:train/views/loginPage/view.dart';
import 'package:train/views/loginPage/widgets/login_Email.dart';
import 'package:train/views/loginPage/widgets/login_Password.dart';

class TextFieldsComponents extends StatefulWidget {
  const TextFieldsComponents({super.key});

  @override
  State<TextFieldsComponents> createState() =>
      _TextFeildsComponentsState();
}

class _TextFeildsComponentsState extends State<TextFieldsComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginEmail(),

        const SizedBox(height: 10),

        PasswordField(
          controller: passController,
          obscure: passToggel,
          onToggle: () => setState(() => passToggel = !passToggel),
        ),
      ],
    );
  }
}
