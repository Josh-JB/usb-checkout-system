import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class HPeriod3 extends StatefulWidget {
  const HPeriod3({super.key});

  @override
  State<HPeriod3> createState() => _HPeriod3State();
}

List StudentsList = ["Lewis Arias ", "William Bagwell ", "Sean Banerjee ", "Sebastian Barajas ", "Thomas Bracken ",
 "Seth Carter ", "Mason Coons ", "Oliver Corwell ", "Dandee Daniel ", "Andrew Davis ", "Alexis Dismuke ",
  "Jayden Edwards ", "John Enlow ", "Nathan Findley ", "Azza Garboua ", "Caden Jones ", "Robert Keller ",
   "Jackson McConkey ", "Alexander Smith ", "Lucas Stohs "];

class _HPeriod3State extends State<HPeriod3> {
  Color DefaultColor = const Color.fromARGB(255, 5, 82, 216);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hammond Period 4'),
        backgroundColor: DefaultColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Divider(),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 1"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 2"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 3"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 4"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 5"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 6"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 7"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 8"),
            items: StudentsList
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}