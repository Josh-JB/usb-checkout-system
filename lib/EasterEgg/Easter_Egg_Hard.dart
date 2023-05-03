import 'dart:math';

import 'package:flutter/material.dart';
import 'package:usb_checkout_system/AppFunction.dart';
import 'package:usb_checkout_system/EasterEgg/ButtonCoordinate.dart';

class EasterEggHard extends StatefulWidget {
  const EasterEggHard({super.key});

  @override
  State<EasterEggHard> createState() => _EasterEggHardState();
}

class _EasterEggHardState extends State<EasterEggHard> {

  int progress = 9;
  int reset = 0;

  Map<int, Color> backgroundcolorRow = List<Color>.generate(9, (i) => Colors.white).asMap();
  Map<int, int> whatcol = List<int>.generate(9, (i) => 0).asMap();
  Map<int, int> whatrow = List<int>.generate(9, (e) => 0).asMap();

//   List<ButtonCoordinate> coordinates = List<ButtonCoordinate>.generate(9, (i) {
//   int col = Random().nextInt(5) + 1;
//   int row = Random().nextInt(9) + 1;

//   return ButtonCoordinate(col, row);
// });


    @override 
  void initState() {
    print("Activating InItState");
    super.initState();
    backgroundcolorRow = List<Color>.generate(9, (index) => Colors.white).asMap().map((key, value)
     => MapEntry((key + 1), value));
    whatcol = List<int>.generate(9, (index) => 0).asMap().map((key, value)
     => MapEntry((key + 1), value));
    whatrow = List<int>.generate(9, (index) => 0).asMap().map((key, value)
     => MapEntry((key + 1), value));
    _RandomizeButton();
    print(whatrow[progress]);
    print("row");
    print(whatcol[progress]);
    print("col");
  }

  void _RandomizeButton() {
    setState(() {
      whatrow.keys.forEach((key) {
        whatrow[key] = Random().nextInt(9) + 1;
      });
      whatcol.keys.forEach((key) {
        whatcol[key] = Random().nextInt(5) + 1;
      });
      print("continuing");
    });
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
        reset = 0;
        print('reset');
      }else if(row == whatrow[progress] && col == whatcol[progress] && reset == 0){
        backgroundcolorRow[progress] = Colors.green;
        progress--;
        if(progress == 0){
          goToEasterHEndPage(context);
        }else{}
        print('yes');
        reset = 0;
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
      print(whatrow[progress]);
      print("row");
      print(whatcol[progress]);
      print("col");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hard mode'),
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
