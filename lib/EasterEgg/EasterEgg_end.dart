import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EasterEggEndPage extends StatefulWidget {
  const EasterEggEndPage({super.key});

  @override
  State<EasterEggEndPage> createState() => _EasterEggEndPageState();
}

class _EasterEggEndPageState extends State<EasterEggEndPage> {
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
            'Well Done',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Text('Made By Nicolas LePere')
        ],
      )),
    );
  }
}
