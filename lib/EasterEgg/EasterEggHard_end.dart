import 'package:flutter/material.dart';

class EasterEggHardEndPage extends StatefulWidget {
  const EasterEggHardEndPage({super.key});

  @override
  State<EasterEggHardEndPage> createState() => _EasterEggHardEndPageState();
}

class _EasterEggHardEndPageState extends State<EasterEggHardEndPage> {
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
            'Impressive ;)',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Text('Made By Joshua Jenkins'),
        ],
      )),
    );
  }
}
