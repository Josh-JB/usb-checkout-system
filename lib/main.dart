import 'package:flutter/material.dart';
import 'package:usb_checkout_system/Easter_Egg.dart';
import 'package:usb_checkout_system/Hammond/PickPeriod.dart';
import 'package:usb_checkout_system/Reed/PickPeriod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'USB Checkout System Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _goToHPickPeriodPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPickPeriod()));
  }

  void _goToRPickPeriodPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPickPeriod()));
  }

  void _goToEasterPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const text()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Divider(),
            const Text(
              'Hello and Welcome to your USB Checkout System',
            ),
            const Divider(),
            const Text(
              'Made By: Joshua Jenkins',
            ),
            const Divider(
              height: 30,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Mr.Hammonds Class',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                ElevatedButton(
                    onPressed: _goToHPickPeriodPage,
                    child: const Text('Click Here'))
              ],
            ),
            const Divider(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Mr.Reeds Class',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                ElevatedButton(
                    onPressed: _goToRPickPeriodPage,
                    child: const Text('Click Here'))
              ],
            ),
            const Spacer(),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  onPressed: _goToEasterPage,
                  child: const Text('Easter Egg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
