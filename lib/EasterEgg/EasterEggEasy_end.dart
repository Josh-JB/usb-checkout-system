import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../AppFunction.dart';

class EasterEggEasyEndPage extends StatefulWidget {
  const EasterEggEasyEndPage({super.key});

  @override
  State<EasterEggEasyEndPage> createState() => _EasterEggEasyEndPageState();
}

class _EasterEggEasyEndPageState extends State<EasterEggEasyEndPage> {
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
          const Text('Made By Nicolas LePere'),
          ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => goToEasterHardPage(context),
                  child: const Text('Hard Mode'),
                ),
                ElevatedButton(
                  onPressed: () => goToEasterImpossiblePage(context),
                  child: const Text('Impossible Mode'),
                ),
              ],
            ),
        ],
      )),
    );
  }
}
