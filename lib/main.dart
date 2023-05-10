import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usb_checkout_system/AppFunction.dart';
import 'package:usb_checkout_system/Drawer/DrawerNav.dart';
import 'package:usb_checkout_system/models/Retain_USB_Data.model.dart';
import 'package:usb_checkout_system/models/theme.model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  ThemeModel themeModel = ThemeModel(prefs);
  themeModel.initialize();

  final RetainDataModel retainDataModel = RetainDataModel(prefs);
  retainDataModel.initialize();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeModel>(create: (_) => themeModel),
      ChangeNotifierProvider<RetainDataModel>(create: (_) => retainDataModel),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
        builder: (BuildContext context, ThemeModel model, _) => MaterialApp(
              title: 'Flutter Demo',
              theme: model.getLightTheme(),
              darkTheme: model.getDarkTheme(),
              themeMode: model.theme,
              home: const MyHomePage(title: 'USB Checkout System Home Page'),
            ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: const Center(
                child: Text(
                  "Main Menu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            DrawerTile(tileText: "Setting", onTap: () => goToSettingPage(context),),
          ],
        ),
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
                    onPressed: () => goToHPickPeriodPage(context),
                    child: const Text('Click Here')),
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
                    onPressed: () => goToRPickPeriodPage(context),
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
                  onPressed: () => goToEasterEasyPage(context),
                  child: const Text('Easy Mode'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
