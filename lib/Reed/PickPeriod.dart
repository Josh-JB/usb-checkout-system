import 'package:flutter/material.dart';
import 'package:usb_checkout_system/AppFunction.dart';

class RPickPeriod extends StatefulWidget {
  const RPickPeriod({super.key});

  final String title = 'RPickPeriod';
  @override
  State<RPickPeriod> createState() => _RPickPeriodState();
}

class _RPickPeriodState extends State<RPickPeriod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reed Page'),
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
                    onPressed: () => goToRPeriod2Page(context),
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
                    onPressed: () => goToRPeriod3Page(context),
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
                    onPressed: () => goToRPeriod4Page(context),
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
