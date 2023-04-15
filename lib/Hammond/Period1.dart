import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class HPeriod1 extends StatefulWidget {
  const HPeriod1({super.key});

  @override
  State<HPeriod1> createState() => _HPeriod1State();
}

List StudentsList = [
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
  "French Pierce",
  "Gibbs Cole",
  "Gray Mikell",
  "Hamilton Jack",
  "Hudson Tyler",
  "Jenkins-Bellows Joshua",
  "Joe Jennings ",
  "Rowan Long ",
  "Christian Morales ",
  "Taylor Phillips ",
  "Aidan Sindelar ",
  "Lucas Still "
];

class _HPeriod1State extends State<HPeriod1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hammond Period 1'),
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
