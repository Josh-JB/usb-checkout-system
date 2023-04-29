import 'dart:math';

import 'package:flutter/material.dart';
import 'package:usb_checkout_system/AppFunction.dart';

class EasterEggImpossible extends StatefulWidget {
  const EasterEggImpossible({super.key});

  @override
  State<EasterEggImpossible> createState() => _EasterEggImpossibleState();
}

class _EasterEggImpossibleState extends State<EasterEggImpossible> {

  int progress = 9;
  int whatrow = 0;
  int whatcol = 0;
  int reset = 0;

  Map<int, Color> backgroundcolorRow = List<Color>.generate(9, (i) => Colors.white).asMap();

    @override 
  void initState() {
    print("Activating InItState");
    _RandomizeButton();
    super.initState();
    backgroundcolorRow = List<Color>.generate(9, (index) => Colors.white).asMap().map((key, value)
     => MapEntry((key + 1), value));

  }

  void _RandomizeButton() {
    whatrow = Random().nextInt(9);
    whatrow++;
    whatcol = Random().nextInt(5);
    whatcol++;
    print('Row :: $whatrow, Col :: $whatcol, Progress :: $progress, Reset :: $reset');
  }

  Color _WhatButtonColor(int ButtonColorRow){
    Color RowColor = Colors.white;
    RowColor = backgroundcolorRow[ButtonColorRow] ?? Colors.white;
    return RowColor;
  }

  void _checkIfRight(int row, int col) {
    setState(() {
      if(reset == 1){
        backgroundcolorRow.keys.forEach((key) {
          backgroundcolorRow[key] = Colors.white;
        });
        progress = 9;
        whatrow = 0;
        whatcol = 0;
        reset = 0;
        print('reset');
      }else if(row == whatrow && col == whatcol && reset == 0){
        backgroundcolorRow[progress] = Colors.green;
        progress--;
        if(progress == 0){
          goToEasterIEndPage(context);
        }else{}
        print('yes');
      }else if(progress >= 1){
        backgroundcolorRow[progress] = Colors.red;
        reset++;
        print('no');
      } else {
        backgroundcolorRow.keys.forEach((key) {
          backgroundcolorRow[key] = Colors.red;
        });
        reset++;
      }
        _RandomizeButton();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Impossible mode'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (int row = 1; row < 10; ++row)
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int col = 1; col < 6; ++col)
                  ElevatedButton(
                    style: ButtonStyle( 
                        backgroundColor:
                            MaterialStateProperty.all<Color>(_WhatButtonColor(row))),
                    onPressed: () {
                      _checkIfRight(row, col);
                    },
                    child: const Text(
                      "",
                    ),
                  ),
              ],
            ),
        ],
      )),
    );
  }
}
