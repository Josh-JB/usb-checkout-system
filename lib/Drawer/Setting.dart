import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/theme.model.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ThemeModel>(
            builder: (context, model, _) => FormBuilderDropdown(
              name: "Your Color",
              decoration: const InputDecoration(labelText: "Your Color"),
              initialValue: 'Deep Blue',
              onChanged: (value) => setState(() {
                if (value != null) {
                  model.setMenuColor(value);
                }
              }),
              items: [
                'Deep Blue',
                'Blue',
                'Red',
                'Amber',
                'Green',
                'Purple',
                'Brown',
                'Cyan',
                'Orange',
                'Pink',
                'Yellow'
              ]
                  .map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
