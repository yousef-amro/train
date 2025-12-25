import 'package:flutter/material.dart';
import 'package:train/views/registerPage/widgets/register_password.dart';
import 'package:train/views/registerPage/widgets/register_Email.dart';
import 'package:train/views/registerPage/widgets/register_Name.dart';
import 'package:train/views/registerPage/view.dart';

class TextFieldsComponents extends StatefulWidget {
  const TextFieldsComponents({super.key});

  @override
  State<TextFieldsComponents> createState() =>
      _TextFieldsComponentsState();
}

class _TextFieldsComponentsState extends State<TextFieldsComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterName(),

        const SizedBox(height: 10),

        RegisterEmail(),

        const SizedBox(height: 10),

        PasswordField(
          controller: passController1,
          obscure: passToggel1,
          hint: 'Password',
          otherController: null,
          onToggle: () => setState(() => passToggel1 = !passToggel1),
        ),
        const SizedBox(height: 10),

        PasswordField(
          controller: passController2,
          obscure: passToggel2,
          hint: 'Password Again',
          otherController: passController1,
          onToggle: () => setState(() => passToggel2 = !passToggel2),
        ),
      ],
    );
  }
}
