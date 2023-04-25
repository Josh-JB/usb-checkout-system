import 'dart:math';

import 'package:flutter/material.dart';
import 'package:usb_checkout_system/EasterEgg/EasterEggImmpossible_end.dart';
import 'package:usb_checkout_system/EasterEgg/EasterEgg_end.dart';

class EasterEggImmpossible extends StatefulWidget {
  const EasterEggImmpossible({super.key});

  @override
  State<EasterEggImmpossible> createState() => _EasterEggImmpossibleState();
}

class _EasterEggImmpossibleState extends State<EasterEggImmpossible> {
  Color background1 = Colors.white;
  Color background2 = Colors.white;
  Color background3 = Colors.white;
  Color background4 = Colors.white;
  Color background5 = Colors.white;
  Color background6 = Colors.white;
  Color background7 = Colors.white;
  Color background8 = Colors.white;
  Color background9 = Colors.white;
  Color PickedBackGround = Colors.white;

// saving for now
  // int ButtonPosition1 = 0;
  // int ButtonPosition2 = 0;
  // int ButtonPosition3 = 0;
  // int ButtonPosition4 = 0;
  // int ButtonPosition5 = 0;
  // int ButtonPosition6 = 0;
  // int ButtonPosition7 = 0;
  // int ButtonPosition8 = 0;
  // int ButtonPosition9 = 0;

  int progress = 0;
  int whatrow = 0;
  int whatcol = 0;
  int reset = 0;

  void _goToEasterHEndPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const EasterEggImmpossibleEndPage()));
  }

  void _RandomizeButton() {
    whatrow = Random().nextInt(9);
    whatrow++;
    whatcol = Random().nextInt(5);
    whatcol++;
    print('Row :: $whatrow, Col :: $whatcol, Progress :: $progress, Reset :: $reset');
  }

  void _WhatButtonColor(int ButtonColorProgress){
    PickedBackGround = background9;
    if(ButtonColorProgress == 1){
      PickedBackGround = background9;
    }else if(ButtonColorProgress == 2){
      PickedBackGround = background8;
    }else if(ButtonColorProgress == 3){
      PickedBackGround = background7;
    }else if(ButtonColorProgress == 4){
      PickedBackGround = background6;
    }else if(ButtonColorProgress == 5){
      PickedBackGround = background5;
    }else if(ButtonColorProgress == 6){
      PickedBackGround = background4;
    }else if(ButtonColorProgress == 7){
      PickedBackGround = background3;
    }else if(ButtonColorProgress == 8){
      PickedBackGround = background2;
    }else if(ButtonColorProgress == 9){
      PickedBackGround = background1;
    }else{}
  }

  @override 
  void initState() {
    super.initState();
    print("Activating InItState");
    _RandomizeButton();
  }

  void _checkIfRight(int row, int col) {
    setState(() {
      if (reset == 1) {
        background1 = Colors.white;
        background2 = Colors.white;
        background3 = Colors.white;
        background4 = Colors.white;
        background5 = Colors.white;
        background6 = Colors.white;
        background7 = Colors.white;
        background8 = Colors.white;
        background9 = Colors.white;
        progress = 0;
        whatrow = 0;
        whatcol = 0;
        reset = 0;
      } else if (progress == 0 && row == whatrow && col == whatcol && reset == 0) {
        background1 = Colors.green;
        progress++;
      } else if (progress == 1 && row == whatrow && col == whatcol) {
        background2 = Colors.green;
        progress++;
      } else if (progress == 2 && row == whatrow && col == whatcol) {
        background3 = Colors.green;
        progress++;
      } else if (progress == 3 && row == whatrow && col == whatcol) {
        background4 = Colors.green;
        progress++;
      } else if (progress == 4 && row == whatrow && col == whatcol) {
        background5 = Colors.green;
        progress++;
      } else if (progress == 5 && row == whatrow && col == whatcol) {
        background6 = Colors.green;
        progress++;
      } else if (progress == 6 && row == whatrow && col == whatcol) {
        background7 = Colors.green;
        progress++;
      } else if (progress == 7 && row == whatrow && col == whatcol) {
        background8 = Colors.green;
        progress++;
      } else if (progress == 8 && row == whatrow && col == whatcol) {
        background9 = Colors.green;
        progress++;
        _goToEasterHEndPage();
      } else {
        if (progress == 0) {
          background1 = Colors.red;
          reset++;
        } else if (progress == 1) {
          background2 = Colors.red;
          reset++;
        } else if (progress == 2) {
          background3 = Colors.red;
          reset++;
        } else if (progress == 3) {
          background4 = Colors.red;
          reset++;
        } else if (progress == 4) {
          background5 = Colors.red;
          reset++;
        } else if (progress == 5) {
          background6 = Colors.red;
          reset++;
        } else if (progress == 6) {
          background7 = Colors.red;
          reset++;
        } else if (progress == 7) {
          background8 = Colors.red;
          reset++;
        } else if (progress == 8) {
          background9 = Colors.red;
          reset++;
        } else {
          background1 = Colors.red;
          background2 = Colors.red;
          background3 = Colors.red;
          background4 = Colors.red;
          background5 = Colors.red;
          background6 = Colors.red;
          background7 = Colors.red;
          background8 = Colors.red;
          background9 = Colors.red;
          reset++;
        }
      }
        _RandomizeButton();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('impossible mode'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (int row = 1; row < 10; _WhatButtonColor(row), ++row)
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int col = 1; col < 6; ++col)
                  ElevatedButton(
                    style: ButtonStyle( 
                        backgroundColor:
                            MaterialStateProperty.all<Color>(PickedBackGround)),
                    onPressed: () {
                      // Check if this is one of the random ones
                      print(PickedBackGround);
                      _checkIfRight(row, col);
                    },
                    child: const Text(
                      "",
                      // "${col.toString()}${row.toString()}",
                      // style: TextStyle(color: background9),
                    ),
                  ),
              ],
            ),
        ],
      )),
    );
  }
}
