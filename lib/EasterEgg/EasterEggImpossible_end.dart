import 'package:flutter/material.dart';

class EasterEggImpossibleEndPage extends StatefulWidget {
  const EasterEggImpossibleEndPage({super.key});

  @override
  State<EasterEggImpossibleEndPage> createState() => _EasterEggImpossibleEndPageState();
}

class _EasterEggImpossibleEndPageState extends State<EasterEggImpossibleEndPage> {
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
            'How Just How',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Text('Made By Joshua Jenkins')
        ],
      )),
    );
  }
}
