import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:usb_checkout_system/models/Retain_USB_Data.model.dart';

class RPeriod4 extends StatefulWidget {
  const RPeriod4({super.key});

  @override
  State<RPeriod4> createState() => _RPeriod4State();
}

List StudentsList = [
  "",
  "Madison Arevalo",
  "Samuel Brichak",
  "Benjamin Carlson",
  "Reginald Dillard",
  "William Green",
  "Zoe Griffin",
  "Javiyah Hatton",
  "Brayden Jones",
  "Darian Jones",
  "Nickolas LaColla",
  "Jazmine Simpson",
  "Jahonesty Spann",
  "Jonathan Spurgeon",
  "Ke'Ajah Sullivan",
  "Braylen Thompson",
  "Zyheir Wallace",
  "Damaijae Williams",
  "Arianna Wofford",
  "Anthony Wolfe"
];

class _RPeriod4State extends State<RPeriod4> {
final Map<String, dynamic> _Rperiod4Data= {};

  @override
  void initState() {
    super.initState();
    context.read<RetainDataModel>().ReedPeriod4().entries.forEach((action) {
      _Rperiod4Data
      [action.key] = action.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RetainDataModel>(builder: (context, retain, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Reed Period 4'),
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
                  _Rperiod4Data
                  ['usb_1'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_1'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 2"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_2'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_2'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 3"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_3'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_3'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 4"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_4'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_4'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 5"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_5'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_5'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 6"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_6'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_6'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 7"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_7'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
                ['usb_7'],
              ),
              FormBuilderDropdown(
                name: "Students",
                decoration: const InputDecoration(labelText: "USB 8"),
                items: StudentsList.map((e) =>
                        DropdownMenuItem(value: e, child: Text(e.toString())))
                    .toList(),
                onChanged: (value) {
                  _Rperiod4Data
                  ['usb_8'] = value;
                  retain.setReedPeriod4(_Rperiod4Data
                  );
                },
                initialValue: _Rperiod4Data
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
