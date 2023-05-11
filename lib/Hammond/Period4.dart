import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/Retain_USB_Data.model.dart';

class HPeriod3 extends StatefulWidget {
  const HPeriod3({super.key});

  @override
  State<HPeriod3> createState() => _HPeriod3State();
}

List StudentsList = [
  "",
  "Lewis Arias ",
  "William Bagwell ",
  "Sean Banerjee ",
  "Sebastian Barajas ",
  "Thomas Bracken ",
  "Seth Carter ",
  "Mason Coons ",
  "Oliver Corwell ",
  "Dandee Daniel ",
  "Andrew Davis ",
  "Alexis Dismuke ",
  "Jayden Edwards ",
  "John Enlow ",
  "Nathan Findley ",
  "Azza Garboua ",
  "Caden Jones ",
  "Robert Keller ",
  "Jackson McConkey ",
  "Alexander Smith ",
  "Lucas Stohs "
];

class _HPeriod3State extends State<HPeriod3> {
  final Map<String, dynamic> _Hperiod4Data = {};

  @override
  void initState() {
    super.initState();
    context.read<RetainDataModel>().HammondPeriod4().entries.forEach((action) {
      _Hperiod4Data[action.key] = action.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RetainDataModel>(builder: (context, retain, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Hammond Period 4'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Divider(),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 1"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_1'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_1'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 2"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_2'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_2'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 3"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_3'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_3'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 4"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_4'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_4'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 5"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_5'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_5'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 6"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_6'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_6'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 7"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_7'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_7'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 8"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod4Data['usb_8'] = value;
                  retain.setHammondPeriod4(_Hperiod4Data);
                },
                initialValue: _Hperiod4Data['usb_8'],
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    });
  }
}