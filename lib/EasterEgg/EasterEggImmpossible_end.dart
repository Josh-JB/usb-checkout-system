import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EasterEggImmpossibleEndPage extends StatefulWidget {
  const EasterEggImmpossibleEndPage({super.key});

  @override
  State<EasterEggImmpossibleEndPage> createState() => _EasterEggImmpossibleEndPageState();
}

class _EasterEggImmpossibleEndPageState extends State<EasterEggImmpossibleEndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WOW :O',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Text('Made By Nicolas LePere')
        ],
      )),
    );
  }
}
