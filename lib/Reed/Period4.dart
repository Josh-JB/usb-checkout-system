import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RPeriod4 extends StatefulWidget {
  const RPeriod4({super.key});

  @override
  State<RPeriod4> createState() => _RPeriod4State();
}

List StudentsList = ["Madison Arevalo", "Samuel Brichak", "Benjamin Carlson", "Reginald Dillard",
"William Green", "Zoe Griffin", "Javiyah Hatton", "Brayden Jones", "Darian Jones", "Nickolas LaColla",
"Jazmine Simpson", "Jahonesty Spann", "Jonathan Spurgeon", "Ke'Ajah Sullivan", "Braylen Thompson",
"Zyheir Wallace", "Damaijae Williams", "Arianna Wofford", "Anthony Wolfe"];

class _RPeriod4State extends State<RPeriod4> {
  Color DefaultColor = const Color.fromARGB(255, 5, 82, 216);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reed Period 4'),
        backgroundColor: DefaultColor,
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
