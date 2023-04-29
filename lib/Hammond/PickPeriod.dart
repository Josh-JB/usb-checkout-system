import 'package:flutter/material.dart';
import 'package:usb_checkout_system/AppFunction.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hammond Page'),
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
                    onPressed: () => goToHPeriod2Page(context),
                    child: const Text('Click Here')),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Text('Period 4',
                    style: Theme.of(context).textTheme.headlineSmall),
                ElevatedButton(
                    onPressed: () => goToHPeriod4Page(context),
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
