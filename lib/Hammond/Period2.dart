import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/Retain_USB_Data.model.dart';

class HPeriod2 extends StatefulWidget {
  const HPeriod2({super.key});

  @override
  State<HPeriod2> createState() => _HPeriod2State();
}

List StudentsList = [
  "",
  "Brandon Admire",
  "Lauren Averett ",
  "Nicholas Baldwin ",
  "Brayden Brown ",
  "Sa'liyah Brownlee ",
  "Jerry Carroll ",
  "Daniel Chavez ",
  "Canyon Crocker ",
  "Reginald Dillard ",
  "Alexandra Falzon ",
  "Pierce French ",
  "Cole Gibbs ",
  "Mikell Gray ",
  "Jack Hamilton ",
  "Tyler Hudson ",
  "Joshua Jenkins-Bellows ",
  "Joe Jennings ",
  "Rowan Long ",
  "Christian Morales ",
  "Taylor Phillips ",
  "Aidan Sindelar ",
  "Lucas Still "
];

class _HPeriod2State extends State<HPeriod2> {
  final Map<String, dynamic> _Hperiod2Data = {};

  @override
  void initState() {
    super.initState();
    context.read<RetainDataModel>().HammondPeriod2().entries.forEach((action) {
      _Hperiod2Data[action.key] = action.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RetainDataModel>(builder: (context, retain, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Hammond Period 2'),
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
                  _Hperiod2Data['usb_1'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_1'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 2"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_2'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_2'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 3"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_3'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_3'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 4"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_4'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_4'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 5"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_5'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_5'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 6"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_6'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_6'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 7"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_7'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_7'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 8"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Hperiod2Data['usb_8'] = value;
                  retain.setHammondPeriod2(_Hperiod2Data);
                },
                initialValue: _Hperiod2Data['usb_8'],
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    });
  }
}
