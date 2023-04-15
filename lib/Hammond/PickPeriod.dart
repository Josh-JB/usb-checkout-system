import 'package:flutter/material.dart';
import 'package:usb_checkout_system/Hammond/Period1.dart';
import 'package:usb_checkout_system/Hammond/Period2.dart';
import 'package:usb_checkout_system/Hammond/Period4.dart';

/// Hammond page, let him pick what period he is on
class HPickPeriod extends StatefulWidget {
  const HPickPeriod({super.key});

  final String title = 'HPickPeriod';
  @override
  State<HPickPeriod> createState() => _HPickPeriodState();
}

class _HPickPeriodState extends State<HPickPeriod> {
  Color DefaultColor = const Color.fromARGB(255, 5, 82, 216);

  void _goToHPeriod1Page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPeriod1()));
  }

  void _goToHPeriod2Page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPeriod2()));
  }

  void _goToHPeriod3Page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPeriod3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hammond Page'),
        backgroundColor: DefaultColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Divider(),
            // ButtonBar(
            //   alignment: MainAxisAlignment.center,
            //   children: [
            //     Text('Period 1', style: Theme.of(context).textTheme.headlineSmall,),
            //     ElevatedButton(onPressed: _goToHPeriod1Page, child: Text('Click Here')),
            //   ],
            // ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Text('Period 2',
                    style: Theme.of(context).textTheme.headlineSmall),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DefaultColor)),
                    onPressed: _goToHPeriod2Page,
                    child: const Text('Click Here')),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Text('Period 4',
                    style: Theme.of(context).textTheme.headlineSmall),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DefaultColor)),
                    onPressed: _goToHPeriod3Page,
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
