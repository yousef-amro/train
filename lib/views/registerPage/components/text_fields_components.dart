import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'package:train/views/registerPage/widgets/drop_down_menu.dart';
import 'package:train/views/registerPage/widgets/register_Email.dart';
import 'package:train/views/registerPage/widgets/register_Name.dart';
import 'package:train/views/registerPage/widgets/register_pass1.dart';
import 'package:train/views/registerPage/widgets/register_pass2.dart';

class TextFieldsComponents extends StatefulWidget {
  const TextFieldsComponents({super.key});

  @override
  State<TextFieldsComponents> createState() =>
      _TextFieldsComponentsState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _TextFieldsComponentsState extends State<TextFieldsComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterName(),

        const SizedBox(height: 10),

        RegisterEmail(),

        const SizedBox(height: 10),
        DropDownMenu(),
        const SizedBox(height: 10),
        RegisterPass1(),
        const SizedBox(height: 10),
        RegisterPass2(),
      ],
    );
  }
}
