import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RPeriod3 extends StatefulWidget {
  const RPeriod3({super.key});

  @override
  State<RPeriod3> createState() => _RPeriod3State();
}

class _RPeriod3State extends State<RPeriod3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reed Period 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Divider(),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 1"),
            items: ["Josh", "Reed", "Hammond"]
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 2"),
            items: ["Josh", "Reed", "Hammond"]
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 3"),
            items: ["Josh", "Reed", "Hammond"]
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            FormBuilderDropdown(name: "Students", 
            decoration: const InputDecoration(
            labelText: "USB 4"),
            items: ["Josh", "Reed", "Hammond"]
            .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
            .toList(),),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}