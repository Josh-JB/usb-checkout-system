import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/Retain_USB_Data.model.dart';

class RPeriod2 extends StatefulWidget {
  const RPeriod2({super.key});

  @override
  State<RPeriod2> createState() => _RPeriod2State();
}

List StudentsList = [
  "",
  "Curtis Barnes",
  "Sophia Browning",
  "Jack Carnes",
  "Teniyah Goodjoine",
  "Austin Holtzee",
  "Zion Moseley",
  "Damon Phillips",
  "Dominick Stopan ",
  "Ryan Sullivan",
  "Luke Tanner",
  "Connor Triplette",
  "Leo Walmsley",
  "Kaeleigh Whitman"
];

class _RPeriod2State extends State<RPeriod2> {
final Map<String, dynamic> _Rperiod2Data = {};

  @override
  void initState() {
    super.initState();
    context.read<RetainDataModel>().ReedPeriod2().entries.forEach((action) {
      _Rperiod2Data[action.key] = action.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RetainDataModel>(builder: (context, retain, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Reed Period 2'),
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
                  _Rperiod2Data['usb_1'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_1'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 2"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_2'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_2'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 3"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_3'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_3'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 4"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_4'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_4'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 5"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_5'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_5'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 6"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_6'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_6'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 7"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_7'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_7'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 8"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod2Data['usb_8'] = value;
                  retain.setReedPeriod2(_Rperiod2Data);
                },
                initialValue: _Rperiod2Data['usb_8'],
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    });
  }
}
