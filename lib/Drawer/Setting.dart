import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Color DefaultColor = Colors.blue;
  String whatcolorR = 'Blue';
  int whatcolorS = 0;
  void _RadioDefualtColor(whatcolorR){
    setState(() {
      if(whatcolorR == 'Blue'){
        DefaultColor = Colors.blue;
      }else if(whatcolorR == 'Red'){
        DefaultColor = Colors.red;
      }else if(whatcolorR == 'Amber'){
        DefaultColor = Colors.amber;
      }else if(whatcolorR == 'Green'){
        DefaultColor = Colors.green;
      }else if(whatcolorR == 'Purple'){
        DefaultColor = Colors.purple;
      }else if(whatcolorR == 'Brown'){
        DefaultColor = Colors.brown;
      }else if(whatcolorR == 'Cyan'){
        DefaultColor = Colors.cyan;
      }else if(whatcolorR == 'Orange'){
        DefaultColor = Colors.orange;
      }else if(whatcolorR == 'Pink'){
        DefaultColor = Colors.pink;
      }else if(whatcolorR == 'Yellow'){
        DefaultColor = Colors.yellow;
      }
    });
  }

    void _SwitchDefualtColor(bool){
    setState(() {
      if(whatcolorS == 0){
        DefaultColor = Colors.amber;
        whatcolorS++;
      }else{
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
                      initialValue: 'Blue',
                      name: 'your_color',
                      onChanged: _RadioDefualtColor,
                      options:
                          ['Blue', 'Red', 'Amber', 'Green', 'Purple', 'Brown', 'Cyan',
                           'Orange', 'Pink', 'Yellow']
                              .map((whatcolorR) => FormBuilderFieldOption(
                                    value: whatcolorR,
                                    child: Text(whatcolorR),
                                  ))
                              .toList(growable: false),
                      controlAffinity: ControlAffinity.trailing,
                    ),
          ],)),
    );
  }
}