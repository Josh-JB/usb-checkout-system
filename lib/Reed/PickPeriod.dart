import 'package:flutter/material.dart';
import 'package:usb_checkout_system/Reed/Period4.dart';
import 'package:usb_checkout_system/Reed/Period2.dart';
import 'package:usb_checkout_system/Reed/Period3.dart';

class RPickPeriod extends StatefulWidget {
  const RPickPeriod({super.key});

  final String title = 'RPickPeriod';
  @override
  State<RPickPeriod> createState() => _RPickPeriodState();
}

class _RPickPeriodState extends State<RPickPeriod> {
  Color DefaultColor = const Color.fromARGB(255, 5, 82, 216);

  void _goToRPeriod4Page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPeriod4()));
  }

  void _goToRPeriod2Page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPeriod2()));
  }

  void _goToRPeriod3Page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPeriod3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reed Page'),
        backgroundColor: DefaultColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Divider(),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Period 2',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DefaultColor)),
                    onPressed: _goToRPeriod2Page,
                    child: const Text('Click Here')),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Period 3',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DefaultColor)),
                    onPressed: _goToRPeriod3Page,
                    child: const Text('Click Here')),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Period 4',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DefaultColor)),
                    onPressed: _goToRPeriod4Page,
                    child: const Text('Click Here')),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
