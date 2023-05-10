import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/Retain_Data.model.NotM.dart';
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
  @override
  void InItState(){
    super.initState();
    Map<String, dynamic> matchData =
      context.read<RetainInfoModel>().matchScouting();
  }
  @override
  Widget build(BuildContext context) {
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
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 2"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 3"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 4"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 5"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 6"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 7"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: "Students",
              decoration: const InputDecoration(labelText: "USB 8"),
              items: StudentsList.map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
