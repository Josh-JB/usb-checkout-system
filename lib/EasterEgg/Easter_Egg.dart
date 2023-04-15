import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:usb_checkout_system/EasterEgg/EasterEgg_end.dart';

class EasterEgg extends StatefulWidget {
  const EasterEgg({super.key});

  @override
  State<EasterEgg> createState() => _EasterEggState();
}

class _EasterEggState extends State<EasterEgg> {
  Color background1 = Colors.white;
  Color background2 = Colors.white;
  Color background3 = Colors.white;
  Color background4 = Colors.white;
  Color background5 = Colors.white;
  Color background6 = Colors.white;
  Color background7 = Colors.white;
  Color background8 = Colors.white;
  Color background9 = Colors.white;

  int progress = 0;
  int whatbutton = 0;
  int reset = 0;

  void _goToEasterEndPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const EasterEggEndPage()));
  }

  void _changeColor(int _whatbutton) {
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
        whatbutton = 0;
        reset = 0;
      } else if (progress == 0 && 1 == _whatbutton && reset == 0) {
        background1 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 1 && 2 == _whatbutton) {
        background2 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 2 && 3 == _whatbutton) {
        background3 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 3 && 4 == _whatbutton) {
        background4 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 4 && 5 == _whatbutton) {
        background5 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 5 && 6 == _whatbutton) {
        background6 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 6 && 7 == _whatbutton) {
        background7 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 7 && 8 == _whatbutton) {
        background8 = Colors.green;
        progress++;
        whatbutton = 0;
      } else if (progress == 8 && 9 == _whatbutton) {
        background9 = Colors.green;
        progress++;
        _goToEasterEndPage();
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy mode'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background9)),
                onPressed: () => _changeColor(1),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background9)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background9)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background9)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background9)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background8)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background8)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background8)),
                onPressed: () => _changeColor(5),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background8)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background8)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background7)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background7)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background7)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background7)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background7)),
                onPressed: () => _changeColor(7),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background6)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background6)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background6)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background6)),
                onPressed: () => _changeColor(4),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background6)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background5)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background5)),
                onPressed: () => _changeColor(3),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background5)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background5)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background5)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background4)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background4)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background4)),
                onPressed: () => _changeColor(9),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background4)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background4)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background3)),
                onPressed: () => _changeColor(6),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background3)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background3)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background3)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background3)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background2)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background2)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background2)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background2)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background2)),
                onPressed: () => _changeColor(2),
                child: const Text(''),
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background1)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background1)),
                onPressed: () => _changeColor(8),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background1)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background1)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(background1)),
                onPressed: () => _changeColor(0),
                child: const Text(''),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
