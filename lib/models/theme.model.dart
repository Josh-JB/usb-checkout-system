import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kThemeKey = 'theme';
const String kColorKey = 'color';

class ThemeModel extends ChangeNotifier {
  final SharedPreferences prefs;

  ThemeMode _theme = ThemeMode.light;

  Color _color = Colors.blue;

  ThemeMode get theme => _theme;

  ThemeModel(this.prefs);

  void initialize() {
    _theme = prefs.getString(kThemeKey) == "ThemeMode.light"
        ? ThemeMode.light
        : prefs.getString(kThemeKey) == "ThemeMode.dark"
            ? ThemeMode.dark
            : ThemeMode.light;
    _color = Color(
        prefs.getInt(kColorKey) ?? const Color.fromARGB(255, 5, 82, 216).value);
  }

  bool isDarkMode() => theme == ThemeMode.dark;
  bool isLightMode() => theme == ThemeMode.light;

  ThemeData getCurrentTheme() =>
      isDarkMode() ? getDarkTheme() : getLightTheme();

  ThemeData getLightTheme() =>
      ThemeData.from(colorScheme: ColorScheme.light(primary: _color));

  ThemeData getDarkTheme() =>
      ThemeData.from(colorScheme: ColorScheme.dark(primary: _color));

  void setMenuColor(String selectedColor) {
    print(selectedColor);

    if (selectedColor == 'Blue') {
      _color = Colors.blue;
    } else if (selectedColor == 'Red') {
      _color = Colors.red;
    } else if (selectedColor == 'Amber') {
      _color = Colors.amber;
    } else if (selectedColor == 'Green') {
      _color = Colors.green;
    } else if (selectedColor == 'Purple') {
      _color = Colors.purple;
    } else if (selectedColor == 'Brown') {
      _color = Colors.brown;
    } else if (selectedColor == 'Cyan') {
      _color = Colors.cyan;
    } else if (selectedColor == 'Orange') {
      _color = Colors.orange;
    } else if (selectedColor == 'Pink') {
      _color = Colors.pink;
    } else if (selectedColor == 'Yellow') {
      _color = Colors.yellow;
    } else if (selectedColor == 'Deep Blue') {
      // _color = Colors.blueGrey;
      _color = const Color.fromARGB(255, 5, 82, 216);
    }

    prefs.setInt(kColorKey, _color.value);
    notifyListeners();
  }

  Color getMenuColor() {
    return _color;
  }
}
