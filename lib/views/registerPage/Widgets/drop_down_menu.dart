import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/views/registerPage/components/text_fields_components.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';

const List<String> list = <String>['Buyer', 'Seller'];

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late String dropdownValue;
  late final RegisterCubit registerCubit;
  static final List<MenuEntry> menuEntries =
      UnmodifiableListView<MenuEntry>(
        list.map<MenuEntry>(
          (String name) => MenuEntry(value: name, label: name),
        ),
      );

  @override
  void initState() {
    super.initState();
    registerCubit = context.read<RegisterCubit>();
    dropdownValue = registerCubit.registerModel.dropdownValue =
        list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: DropdownMenu<String>(
        width: double.infinity,
        initialSelection: list.first,
        onSelected: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
            registerCubit.registerModel.dropdownValue = dropdownValue;
            print(
              "registerCubit.registerModel.dropdownValue ${registerCubit.registerModel.dropdownValue}",
            );
          });
        },
        dropdownMenuEntries: menuEntries,
      ),
    );
  }
}
