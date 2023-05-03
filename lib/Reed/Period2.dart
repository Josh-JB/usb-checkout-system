import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

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
