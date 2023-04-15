import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
            'WOW :O',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Text('Made By Nicolas LePere')
        ],
      )),
    );
  }
}