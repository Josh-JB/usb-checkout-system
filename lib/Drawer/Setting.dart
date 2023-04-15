import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Color DefaultColor = const Color.fromARGB(255, 5, 82, 216);
  String whatcolorR = 'Blue';
  int whatcolorS = 0;
  void _RadioDefaultColor(whatcolorR) {
    setState(() {
      if (whatcolorR == 'Blue') {
        DefaultColor = Colors.blue;
      } else if (whatcolorR == 'Red') {
        DefaultColor = Colors.red;
      } else if (whatcolorR == 'Amber') {
        DefaultColor = Colors.amber;
      } else if (whatcolorR == 'Green') {
        DefaultColor = Colors.green;
      } else if (whatcolorR == 'Purple') {
        DefaultColor = Colors.purple;
      } else if (whatcolorR == 'Brown') {
        DefaultColor = Colors.brown;
      } else if (whatcolorR == 'Cyan') {
        DefaultColor = Colors.cyan;
      } else if (whatcolorR == 'Orange') {
        DefaultColor = Colors.orange;
      } else if (whatcolorR == 'Pink') {
        DefaultColor = Colors.pink;
      } else if (whatcolorR == 'Yellow') {
        DefaultColor = Colors.yellow;
      }else if (whatcolorR == 'Deep Blue') {
        DefaultColor = const Color.fromARGB(255, 5, 82, 216);
      }
    });
  }

  void _SwitchDefaultColor(bool) {
    setState(() {
      if (whatcolorS == 0) {
        DefaultColor = Colors.amber;
        whatcolorS++;
      } else {
        DefaultColor = Colors.blue;
        whatcolorS--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: DefaultColor,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormBuilderRadioGroup<String>(
            decoration: const InputDecoration(
              labelText: 'My chosen Color',
            ),
            initialValue: 'Deep Blue',
            name: 'your_color',
            onChanged: _RadioDefaultColor,
            options: [
              'Deep Blue','Blue','Red','Amber','Green','Purple','Brown','Cyan','Orange','Pink','Yellow'
            ]
                .map((whatcolorR) => FormBuilderFieldOption(
                      value: whatcolorR,
                      child: Text(whatcolorR),
                    ))
                .toList(growable: false),
            controlAffinity: ControlAffinity.trailing,
          ),
        ],
      )),
    );
  }
}
