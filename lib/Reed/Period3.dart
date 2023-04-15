import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RPeriod3 extends StatefulWidget {
  const RPeriod3({super.key});

  @override
  State<RPeriod3> createState() => _RPeriod3State();
}

List StudentsList = ["Joshua Dial", "Owen Felise", "McKenzie Frazier", "Matthew Fuller",
  "Mikell Gray", "Joshua Jenkins-Bellows", "Joshua Johnson", "Ryan Lambert", "Nolvert Larriv",
  "Aaden McDowell", "Aryaman Misra", "Aaliyah Moseley", "Domarian Nelson", "Katie Norwood",
  "Karli Piquet", "Alexander Reifsnider", "Kamel Sewell", "Morgan Skipper", "Chaiton Swaney",
  "Marcus Woerner"];

class _RPeriod3State extends State<RPeriod3> {
  Color DefaultColor = const Color.fromARGB(255, 5, 82, 216);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reed Period 3'),
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}