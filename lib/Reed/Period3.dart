import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/Retain_USB_Data.model.dart';

class RPeriod3 extends StatefulWidget {
  const RPeriod3({super.key});

  @override
  State<RPeriod3> createState() => _RPeriod3State();
}

List StudentsList = [
  "",
  "Joshua Dial",
  "Owen Felise",
  "McKenzie Frazier",
  "Matthew Fuller",
  "Mikell Gray",
  "Joshua Jenkins-Bellows",
  "Joshua Johnson",
  "Ryan Lambert",
  "Nolvert Larriv",
  "Aaden McDowell",
  "Aryaman Misra",
  "Aaliyah Moseley",
  "Domarian Nelson",
  "Katie Norwood",
  "Karli Piquet",
  "Alexander Reifsnider",
  "Kamel Sewell",
  "Morgan Skipper",
  "Chaiton Swaney",
  "Marcus Woerner"
];

class _RPeriod3State extends State<RPeriod3> {
final Map<String, dynamic> _Rperiod3Data= {};

  @override
  void initState() {
    super.initState();
    context.read<RetainDataModel>().ReedPeriod3().entries.forEach((action) {
      _Rperiod3Data
      [action.key] = action.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RetainDataModel>(builder: (context, retain, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Reed Period 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Divider(),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 1"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_1'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_1'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 2"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_2'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_2'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 3"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_3'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_3'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 4"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_4'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_4'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 5"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_5'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_5'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 6"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_6'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_6'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 7"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_7'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_7'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 8"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod3Data
                  ['usb_8'] = value;
                  retain.setReedPeriod3(_Rperiod3Data
                  );
                },
                initialValue: _Rperiod3Data
                ['usb_8'],
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    });
  }
}
